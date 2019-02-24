REM ######################################################
REM Installing KBS Docker Suite Standard
REM ######################################################
REM ......................................................
call env.bat

REM ######################################################
REM Creating data volume...
REM ######################################################
docker volume create --name=kbs_portainer_data

REM ######################################################
REM Creating separate docker network...
REM ######################################################
docker network create -d bridge kbs_network

REM ######################################################
REM Pulling images...
REM ######################################################

REM ######################################################
REM Building images...
REM ######################################################
docker-compose -f kbs-haproxy/docker-compose.yml build
docker-compose -f kbs-portainer/docker-compose.yml build
docker-compose -f kbs-pgsingle/docker-compose.yml build
docker-compose -f kbs-pgseed/docker-compose.yml build
docker-compose -f kbs-pgmigrator/docker-compose.yml build
docker-compose -f kbs-server/docker-compose.yml build

REM ######################################################
REM Starting...
REM ######################################################
docker-compose -f kbs-haproxy/docker-compose.yml up --force-recreate -d

docker run --restart=always -d -p 9000:9000 --name=kbs-portainer --network=kbs_network -v /var/run/docker.sock:/var/run/docker.sock -v kbs_portainer_data:/data portainer/portainer:1.20.0
REM docker-compose -f kbs-portainer/docker-compose.yml up --force-recreate -d

docker-compose -f kbs-pgsingle/docker-compose.yml up --force-recreate -d
ping -n 10 127.1 >nul

docker-compose -f kbs-pgseed/docker-compose.yml up --force-recreate -d
REM ###### waiting 60s to complete seed import
ping -n 60 127.1 >nul

docker-compose -f kbs-pgmigrator/docker-compose.yml up --force-recreate

docker-compose -f kbs-server/docker-compose.yml up --force-recreate -d
REM ###### waiting 60s to complete start kbs-server
ping -n 60 127.1 >nul

REM ######################################################
REM List all
REM ######################################################
docker network ls
docker volume ls
docker ps

REM ......................................................
REM ######################################################
REM Installation finished!
REM ######################################################