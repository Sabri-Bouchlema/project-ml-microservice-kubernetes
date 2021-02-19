#!/usr/bin/env bash

# Create dockerpath
dockerpath=ml-microservice-api

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag $dockerpath:latest sabribouchlema/$dockerpath:latest

# Push image to a docker repository
docker push sabribouchlema/$dockerpath:latest
