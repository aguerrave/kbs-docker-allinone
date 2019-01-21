REM ######################################################
REM Uninstalling KBS Docker Suite Extension
REM ######################################################
REM ......................................................

REM ######################################################
REM Stopping and removing containers...
REM ######################################################
docker-compose -f kbs-pgweb/docker-compose.yml down -v
docker-compose -f kbs-pgbackupper/docker-compose.yml down -v
docker-compose -f kbs-openldap/docker-compose.yml down -v

REM ###### Prune all stopped containers
docker container prune -f

REM ######################################################
REM Removing data volume...
REM ######################################################

REM ###### Prune all unused volumes 
docker volume prune -f

REM ######################################################
REM Removing network...
REM ######################################################

REM ######################################################
REM List all
REM ######################################################
docker ps
docker volume ls
docker network ls

REM ......................................................
REM ######################################################
REM Uninstall extension finished!
REM ######################################################