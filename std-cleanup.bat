REM ######################################################
REM Uninstalling KBS Docker Suite Standard
REM ######################################################
REM ......................................................

REM ######################################################
REM Stopping and removing containers...
REM ######################################################
docker-compose -f kbs-server/docker-compose.yml down -v
docker-compose -f kbs-pgmigrator/docker-compose.yml down -v
docker-compose -f kbs-pgseed/docker-compose.yml down -v
docker-compose -f kbs-pgweb/docker-compose.yml down -v
docker-compose -f kbs-pgbackupper/docker-compose.yml down -v
docker-compose -f kbs-pgsingle/docker-compose.yml down -v
docker stop kbs-portainer
REM docker-compose -f kbs-portainer/docker-compose.yml down -v
docker-compose -f kbs-haproxy/docker-compose.yml down -v

REM ###### Prune all stopped containers
docker container prune -f

REM ######################################################
REM Removing data volume...
REM ######################################################
docker volume rm kbs_portainer_data

REM ###### Prune all unused volumes 
docker volume prune -f

REM ######################################################
REM Removing network...
REM ######################################################
docker network rm kbs_network

REM ######################################################
REM List all
REM ######################################################
docker ps
docker volume ls
docker network ls

REM ......................................................
REM ######################################################
REM Uninstall finished!
REM ######################################################