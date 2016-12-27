#!/bin/bash
docker rm -fv onJobs-rest-api-$1
docker build -t onJobs-rest-api .
docker run -d --privileged=true --name onJobs-rest-api-$1 -p $1:8084 onJobs-rest-api
