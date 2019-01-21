REM ######################################################
REM Installing KBS Docker Suite Extension
REM ######################################################
REM ......................................................

REM ######################################################
REM Creating data volume...
REM ######################################################

REM ######################################################
REM Creating separate docker network...
REM ######################################################

REM ######################################################
REM Pulling images...
REM ######################################################

REM ######################################################
REM Building images...
REM ######################################################
docker-compose -f kbs-openldap/docker-compose.yml build
docker-compose -f kbs-pgbackupper/docker-compose.yml build
docker-compose -f kbs-pgweb/docker-compose.yml build

REM ######################################################
REM Starting...
REM ######################################################
docker-compose -f kbs-openldap/docker-compose.yml up --force-recreate -d
docker-compose -f kbs-pgbackupper/docker-compose.yml up --force-recreate -d
docker-compose -f kbs-pgweb/docker-compose.yml up --force-recreate -d

REM ######################################################
REM List all
REM ######################################################
docker network ls
docker volume ls
docker ps

REM ......................................................
REM ######################################################
REM Installation extension finished!
REM ######################################################