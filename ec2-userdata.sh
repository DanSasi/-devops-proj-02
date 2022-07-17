#!/bin/bash

# Installing Docker Engine

curl https://get.docker.com | sh -

# Installing Docker-Compose
sudo apt install docker-compose -y

#Adding ubuntu to docker group for permissions
usermod -aG docker ubuntu

# Adding Compose Configuration File to point to our project

echo """version: '3.3'
services:
    devops-proj-01:
        container_name: web
        ports:
            - '80:80'
        image: 'ds94/devops-proj-01:latest'""" > /opt/docker-compose.yml


# First Start of the project
docker-compose -f /opt/docker-compose.yml up -d

#github action ssh with the command  "docker-compose -f /opt/docker-compose.yml pull && docker-compose -f /opt/docker-compose.yml up -d" for deployment

# If we want auto-deploy on listening mode then we would use:
#echo "* * * * * root docker-compose -f /opt/docker-compose.yml pull && docker-compose -f /opt/docker-compose.yml up -d" > /etc/cron.d/dockerjobs
