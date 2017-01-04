#!/bin/bash
docker rm -fv despachalo-rest-api-$1
docker build -t despachalo-rest-api .
docker run -d --privileged=true --name despachalo-rest-api-$1 -p $1:8084 despachalo-rest-api
