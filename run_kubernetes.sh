#!/usr/bin/env bash

# This is your Docker ID/path
dockerpath=sabribouchlema/ml-microservice-api

# Run the Docker Hub container with kubernetes
kubectl run mlmicroserviceapi\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=mlmicroserviceapi

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward mlmicroserviceapi 8000:80

