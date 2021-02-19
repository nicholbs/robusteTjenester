#!/bin/bash -x

#Laster ned memcache imaget og lager instansen på en gang:
sudo docker run --name=memcache -p 11211:11211 -d memcached memcached -m 128

