set -e

print_help() {
    echo """
    NAME
        SecurityRAT ASVS Importer

    DESCRIPTION
        - Small script to import ASVS controls to SecurityRAT in the blink of an eye.
        - GitHub: https://github.com/mllamazares/SecurityRAT-ASVS-importer
        - Author: https://www.linkedin.com/in/mllamazares/

    SYNOPSIS
        ./secrat_asvs_importer.sh [OPTIONS]

    OPTIONS
        -l <language> 
            Language of the ASVS controls. 
            Avaiable options are en, es or zh-cn
            Default: en
        -d <securityrat_docker_db_container>
            The running docker container that contains the SecurityRAT database where it will overwrite the requirements.
            Example: securityrat-mysql
        -s
            Categorizes the ASVS requirements following STRIDE threats mapping.
            More info at: https://github.com/mllamazares/STRIDE-vs-ASVS
        -h
            Prints this message (duh).
    """
    exit 0
}

get_latest_release() {
    curl --silent "https://api.github.com/repos/$1/releases/latest" | grep '"tag_name":' | grep -Po "\d+\.\d+\.\d+"
}

lang="en"
docker_db_container=""
stride=""

while getopts l:d:sh flag
do
    case "${flag}" in
        l) lang=${OPTARG};;
        d) docker_db_container=${OPTARG};;
        s) stride="_stride";;
        h) print_help;;
    esac
done

echo "[+] Searching latest ASVS relase..."
version=$(get_latest_release "OWASP/ASVS")
main_version=${version::-2}

echo "[i] The lastest ASVS version is ${version}"

asvs_csv="./sql/asvs_${version}_${lang}.csv"
asvs_sql="./sql/secrat_asvs_${version}_${lang}${stride}.sql"
secrat_final_sql="./output/secrat_asvs_final_${version}_${lang}${stride}.sql"
asvs_csv_github_url="https://raw.githubusercontent.com/OWASP/ASVS/master/${main_version}/docs_${lang}/OWASP%20Application%20Security%20Verification%20Standard%20${version}-${lang}.csv"

echo "[+] Downloading the ${lang} version of ASVS in CSV format..."
wget -q ${asvs_csv_github_url} -O ${asvs_csv}
echo "[i] ${asvs_csv} file downloaded!"

echo "[+] Creating SQL dump with the required configuration..."
# Clean double quotes
sed -i "s/\"\"/'/g" ${asvs_csv}
awk -f ./scripts/asvs_csv_parser.awk -v stride_version=${stride} ${asvs_csv} > ${asvs_sql}
cat ./sql/secrat_create.sql ./sql/secrat${stride}_init.sql ${asvs_sql} > ${secrat_final_sql}

echo "[i] ${secrat_final_sql} file generated!"

if [ -n "${docker_db_container}" ]; then
    echo "[+] Loading SQL requirements into SecurityRAT database..."
    docker cp ${secrat_final_sql} ${docker_db_container}:"./var/requirements.sql"
    docker exec ${docker_db_container} sh -c "./var/dumpRequirements.sh"
fi

echo "[-] All done! Bye!"

#EOF