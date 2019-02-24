REM ######################################################
REM Uninstalling KBS Docker Suite Pro
REM ######################################################
REM ......................................................

REM ###########################
REM Removing swarm...
REM ###########################
docker stack rm kbs-server
docker stack rm kbs-pgseed
docker stack rm kbs-pgweb
docker stack rm kbs-pgserver


REM ######################################################
REM Removing all stopped containers...
REM ######################################################
ping -n 10 127.1 >nul
docker container prune -f


REM ######################################################
REM Removing data volume...
REM ######################################################

REM ###### Prune all unused volumes 
docker volume prune -f


REM ######################################################
REM Removing network...
REM ######################################################
docker network rm kbs_network

REM ######################################################
REM List all
REM ######################################################
docker volume ls
docker network ls
docker stack ls
docker service ls

REM ......................................................
REM ######################################################
REM Uninstall finished!
REM ######################################################