#!/bin/bash

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
            The language of the ASVS controls. Avaiable options are en, es or zh-cn. Default is en
        -d <securityrat_docker_db_container>
            The running docker container that contains the SecurityRAT database where it will overwrite the requirements.
            Example: securityrat-mysql
        -h
            Prints this message (duh).
    """
    exit 0
}

get_latest_release() {
    curl --silent "https://api.github.com/repos/$1/releases/latest" | grep '"tag_name":' | grep -Po "[\d\.]+"
}

lang="en"
docker_db_container=""

while getopts l:d:sh flag
do
    case "${flag}" in
        l) lang=${OPTARG};;
        d) docker_db_container=${OPTARG};;
        h) print_help;;
    esac
done

echo "[+] Searching latest ASVS relase..."
version=$(get_latest_release "OWASP/ASVS")
main_version=${version::-2}

echo "   The lastest ASVS version is ${version}"

asvs_csv="./csv/asvs_${version}_${lang}.csv"
asvs_csv_github_url="https://raw.githubusercontent.com/OWASP/ASVS/master/${main_version}/docs_${lang}/OWASP%20Application%20Security%20Verification%20Standard%20${version}-${lang}.csv"

echo "[+] Downloading the ${lang} version of ASVS in CSV format..."
wget -q ${asvs_csv_github_url} -O ${asvs_csv}
echo "   ${asvs_csv} file downloaded!"

echo "[+] Creating SQL dump with the required configuration..."

asvs_sql="./sql/tmp/secrat_asvs_${version}_${lang}.sql"
secrat_final_sql="./sql/output/secrat_asvs_final_${version}_${lang}.sql"

# Clean double-double quotes (:
sed -i "s/\"\"/'/g" ${asvs_csv}

awk -f ./scripts/asvs_csv_parser.awk ${asvs_csv} > ${asvs_sql}

# Merging all SQL files
cat ./sql/secrat_create.sql ./sql/secrat_init.sql ${asvs_sql} > ${secrat_final_sql}

echo "   ${secrat_final_sql} file generated!"

if [ -n "${docker_db_container}" ]; then
    echo "[+] Loading SQL requirements into SecurityRAT database..."
    docker cp ${secrat_final_sql} ${docker_db_container}:"./var/requirements.sql"
    docker exec ${docker_db_container} sh -c "./var/dumpRequirements.sh"
fi

echo "[+] All done! Bye!"

#EOF