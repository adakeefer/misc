#!/bin/bash
##########################################################
#
# Bash Shell script that
#
#  * stops all running containers
#  * removes all containers
#  * removes all images
#  * removes all volumes
#  * removes cassupdates folder
#  * runs system prune for good measure!
#
#

echo '####################################################'
echo 'Stopping running containers...'
echo '####################################################'
docker stop $(docker ps -aq)

echo '####################################################'
echo 'Removing containers...'
echo '####################################################'
docker rm $(docker ps -aq)

echo '####################################################'
echo 'Removing images...'
echo '####################################################'
docker rmi $(docker images -q)

echo '####################################################'
echo 'Removing docker container volumes (if any)...'
echo '####################################################'
docker volume rm $(docker volume ls -q)

echo '####################################################'
echo 'Pruning...'
echo '####################################################'
docker system prune -a -f --volumes
