#!/bin/bash -x
#x opsjon gjør at det blir utskrift av alle kommandoer
docker run -e BF_DB_HOST=192.168.130.10 -e BF_DB_PORT=26257 -e BF_DB_NAME=bf -e BF_DB_USER=bfuser -e BF_WEBHOST=10.212.140.205 -e BF_FRONTPAGE_LIMIT=500 -d -P docker_image:v0
