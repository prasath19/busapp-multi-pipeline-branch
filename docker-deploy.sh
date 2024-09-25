#!/bin/bash

version=master
env="master"

if docker ps -a --format '{{.Names}}' | grep "${env}"
then
docker stop ${env} && sudo docker rm ${env}
fi
docker run -it -d -p 8090:8001 --name ${env} learnitguide/busapp:${version}
