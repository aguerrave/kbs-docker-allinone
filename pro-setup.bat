REM ######################################################
REM Installing KBS Docker Suite Pro
REM ######################################################
REM ......................................................
call env.bat


REM ######################################################
REM Creating data volume...
REM ######################################################


REM ######################################################
REM Creating separate docker network...
REM ######################################################
docker network create --attachable -d overlay kbs_network


REM ######################################################
REM Pulling images...
REM ######################################################


REM ######################################################
REM Building images...
REM ######################################################
REM docker-compose -f kbs-pgsingle/docker-compose.yml build
REM docker-compose -f kbs-pgseed/docker-compose.yml build
REM docker-compose -f kbs-pgmigrator/docker-compose.yml build
REM docker-compose -f kbs-pgweb/docker-compose.yml build
REM docker-compose -f kbs-server/docker-compose.yml build


REM ######################################################
REM Starting...
REM ######################################################
docker stack deploy -c kbs-pgsingle/docker-stack.yml kbs-pgserver
docker stack deploy -c kbs-pgseed/docker-stack.yml kbs-pgseed
REM ###### waiting 60s to complete seed import
ping -n 60 127.1 >nul 
docker-compose -f kbs-pgmigrator/docker-compose.yml up --force-recreate
docker stack deploy -c kbs-pgweb/docker-stack.yml kbs-pgweb

docker stack deploy -c kbs-server/docker-stack.yml kbs-server
REM ###### waiting 60s to complete start kbs-server
ping -n 60 127.1 >nul 


REM ######################################################
REM List all
REM ######################################################
docker volume ls
docker network ls
docker stack ls
docker service ls


REM ......................................................
REM ######################################################
REM Install finished!
REM ######################################################