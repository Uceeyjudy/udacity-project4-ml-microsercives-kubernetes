#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=juditheze/ml-project

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u juditheze
docker image tag ml-project $dockerpath


# Step 3:
# Push image to a docker repository
docker push $dockerpath
