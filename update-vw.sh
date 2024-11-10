#!/bin/bash

echo "Pulling latest version..."
sudo docker pull vaultwarden/server:latest

echo "Stopping vaultwarden..."
sudo docker stop vaultwarden

echo "Removing old container..."
sudo docker rm vaultwarden

echo "Starting new container with data mounted"
sudo docker run -d --name vaultwarden -v /srv/vaultwarden/:/data/ -p 8080:80 vaultwarden/server:latest
