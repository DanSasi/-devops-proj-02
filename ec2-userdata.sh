#!/bin/bash
curl https://get.docker.com | sh -
sudo apt install docker-compose -y

echo """version: '3.3'
services:
    devops-proj-01:
        container_name: web
        ports:
            - '80:80'
        image: 'ds94/devops-proj-01:latest'""" > /opt/docker-compose.yml


docker-compose -f /opt/docker-compose.yml up -d
echo "* * * * * root docker-compose -f /opt/docker-compose.yml pull && docker-compose -f /opt/docker-compose.yml up -d" > /etc/cron.d/dockerjobs