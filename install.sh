#!/bin/bash
docker rm -fv onjobs-rest-api-$1
docker build -t onjobs-rest-api .
docker run -d --privileged=true --name onjobs-rest-api-$1 -p $1:8084 onjobs-rest-api
