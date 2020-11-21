#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
IMG_TAG=latest
dockerpath=jtack4970/udacity-predict

# Step 2:  
# Authenticate & tag
echo "$DOCKER_TOKEN" | docker login --username ${DOCKER_USER} --password-stdin
docker tag udacity-predict ${dockerpath}
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push ${dockerpath}
