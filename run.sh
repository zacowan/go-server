#!/bin/bash

# Replace this with your working directory
WORKING_DIR="$(pwd)"
# Replace with the name of the src directory in the docker container
DOCKER_SRC="go-server"

# Docker image information
IMAGE_NAME="go-server"
IMAGE_VERSION="latest"

# Docker command information
DOCKERCMD="docker"
OPTIONS="--rm -it -v ${WORKING_DIR}/src:/usr/src/${DOCKER_SRC} -p 8080:8080"

# Constructed command
COMMAND="${DOCKERCMD} run ${OPTIONS} ${IMAGE_NAME}:${IMAGE_VERSION}"

# Display the command
echo "$COMMAND"
# Execute the command
exec $COMMAND
