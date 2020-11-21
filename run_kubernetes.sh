#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=jtack4970/udacity-predict

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment --image=${dockerpath} predict-app

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl expose deployment predict-app --port=80 --name=predict-app
kubectl port-forward deployment/predict-app 8000:80

