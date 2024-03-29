# SecurityRAT-ASVS-Importer

![](https://img.shields.io/badge/lisense-MIT-green)
[![](https://img.shields.io/badge/LinkedIn-0077B5?logo=linkedin&logoColor=white)](https://www.linkedin.com/in/mllamazares/)
[![Watch on GitHub](https://img.shields.io/github/watchers/mllamazares/SecurityRAT-ASVS-Importer.svg?style=social)](https://github.com/mllamazares/SecurityRAT-ASVS-Importer/watchers)
[![Star on GitHub](https://img.shields.io/github/stars/mllamazares/SecurityRAT-ASVS-Importer.svg?style=social)](https://github.com/mllamazares/SecurityRAT-ASVS-Importer/stargazers)
[![Tweet](https://img.shields.io/twitter/url/https/github.com/mllamazares/SecurityRAT-ASVS-Importer.svg?style=social)](https://twitter.com/intent/tweet?text=Check%20out%20SecurityRAT-ASVS-Importer%21%20https%3A%2F%2Fgithub.com%2Fmllamazares%2FSecurityRAT-ASVS-Importer)

Script to generate and import ASVS controls to SecurityRAT in the blink of an eye.

**TL;DR**: *If you just need the ASVS requirements in SQL format and don't care about the script, go to [the output folder](./sql/output). 😉*

## Rationale

[SecurityRAT](https://securityrat.github.io/) (*"Security Requirement Automation Tool"*) is a tool helping you manage security requirements in your agile development projects.
In a nutshell, you specify the properties of an application (usually, we use the name "artifact") that you’re developing. Based on these properties, the tool gives you a list of security requirements you should fulfill. [^1]

At the time of writing, there are no scripts ~~(that I know)~~ to automate the generation and importation of ASVS security controls into the SecurityRAT tool.

Importing ASVS controls manually has the following drawdowns:
1. Time-consuming. 4.0.3 version of ASVS contains nearly 300 security controls and gets updated frequently.
3. Prone to human error.

The SecurityRAT creators also released the [SecurityRAT-Requirements](https://github.com/SecurityRAT/Security-Requirements) repository that contains SQL dumps ready to import.

Potential improvements:
1. The ASVS controls are not updated to the last version.
2. Just English language available, and the current ASVS version is also in Spanish and Simplified Chinese ([at least in CSV format](https://github.com/OWASP/ASVS/tree/master/4.0)).
3. You need to import them manually to the DB.

### Features

**SecurityRAT-ASVS-Importer** tries to address the above points of improvement with the following features:

* Fetches the latest ASVS version available.
* Let you choose among the available languages (English, Spanish or Simplified Chinese).
* Automatically imports all requirements into SecurityRAT database specifying a running DB container.
* It just takes ~4 seconds to perform all the tasks! 🏎️

## Installation and usage

```bash
git clone https://github.com/mllamazares/SecurityRAT-ASVS-Importer
cd SecurityRAT-ASVS-Importer
bash secrat_asvs_importer.sh -h
```

### Quick-start

1. Get SecurityRAT up and running (preferably using [Docker](https://github.com/SecurityRAT/SecurityRAT-dockercompose)):
    ```bash
    git clone https://github.com/SecurityRAT/SecurityRAT-dockercompose.git
    cd SecurityRAT-dockercompose
    docker-compose up
    ```
2. In a different session, clone this repo and open the folder:
    ```bash
    git clone https://github.com/mllamazares/SecurityRAT-ASVS-Importer
    cd SecurityRAT-ASVS-Importer
    ``` 
3. Once step 1 has finished, auto-import the latest ASVS Spanish version to SecurityRAT using the following command:
    ```
    $ bash secrat_asvs_importer.sh -l es -d securityrat-mariadb
    [+] Searching latest ASVS relase...
        The latest ASVS version is 4.0.3
    [+] Downloading the es version of ASVS in CSV format...
        ./csv/asvs_4.0.3_es.csv file downloaded!
    [+] Creating SQL dump with the required configuration...
        ./sql/output/secrat_asvs_final_4.0.3_es.sql file generated!
    [+] Loading SQL requirements into SecurityRAT database...
    [+] All done! Bye!
    ``` 

To verify that the requirements are indeed loaded:
1. Navigate to http://localhost:9002/ and login with `admin/admin` (yep, you should change this in the future).
2. Click on `Define a new artifact`.
3. Select the ASVS chapter and level that you need and smash the `Generate` button.
    ![](./img/secrat-asvs-artifact.png)
4. There you go! Now you have an updated version of the ASVS controls in Spanish! 😎
    ![](./img/secrat-asvs-reqs.png)

### Options

```
$ bash secrat_asvs_importer.sh -h
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
            The running docker container that contains the SecurityRAT database where will overwrite the requirements.
            Example: securityrat-mariadb
        -h
            Prints this message (duh).
```

## TODO
- [ ] Create an enhanced categorization of the requirements. 
    - For sure I will map [STRIDE-vs-ASVS](https://github.com/mllamazares/STRIDE-vs-ASVS), but I'm open to suggestions.
- [ ] Migrate to Python for better portability and ease of collaboration.
- [ ] Extend to different security standards like BSI C5.

[^1]: Extracted from https://securityrat.github.io/
