#!/bin/bash
#####INSTALL DOCKER UBUNTU 16.04

#Actualiza y agrega key
apt-get update && apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

#Agrega repo
apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'

#Actualiza 
apt-get update && apt-get install --allow-unauthenticated -y docker-engine && systemctl status docker

#Install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

#Build docker web
cd /home/vagrant/data && docker-compose up web
