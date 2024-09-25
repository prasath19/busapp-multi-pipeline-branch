#!/bin/bash

version=mas

docker build -t learnitguide/busapp:${version} .
docker push learnitguide/busapp:${version}
