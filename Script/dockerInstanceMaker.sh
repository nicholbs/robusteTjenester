#!/bin/bash -x
#x opsjon gjør at det blir utskrift av alle kommandoer


#Nedlastninger
#Dra til riktig folder for nedlasning
cd /home/ubuntu/

#Last ned våre script
git clone https://github.com/nicholbs/robusteTjenester.git

#Last ned bookface kode
git clone https://git.cs.oslomet.no/kyrre.begnum/bookface

#Laster ned docker programmet og kjører nedlastningen
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh



#Bygge image
#gå til bookface repository
cd /home/ubuntu/bookface/

#bygg ett image ut i fra bookface repository
sudo docker build -t docker_image:v0 .


#Lage instanse ut av imaget
#x opsjon gjør at det blir utskrift av alle kommandoer
sudo docker run -e BF_DB_HOST=192.168.130.10 -e BF_DB_PORT=26257 -e BF_DB_NAME=bf -e BF_DB_USER=bfuser -e BF_WEBHOST=10.212.140.205 -e BF_FRONTPAGE_LIMIT=500 -d -P docker_image:v0
