#!/bin/bash

version=mas
env="mas"

if docker ps -a --format '{{.Names}}' | grep "${env}"
then
docker stop ${env} && sudo docker rm ${env}
fi
docker run -it -d -p 8090:8001 --name ${env} learnitguide/busapp:${version}
