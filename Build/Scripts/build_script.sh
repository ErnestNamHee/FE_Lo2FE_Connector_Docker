#!/bin/bash -x

DOCKER_BUILD_PATH=`pwd`
DOCKER_PARENT_PATH="$(dirname "$(dirname $DOCKER_BUILD_PATH)")"
DOCKER_DEPLOYMENT_PATH=`echo $DOCKER_PARENT_PATH/Deployment` 

echo "#####################################################"
echo "# DOCKER BUILD PATH : $DOCKER_BUILD_PATH"
echo "# DOCKER DEPLOYMENT PATH : $DOCKER_DEPLOYMENT_PATH"
echo "# DOCKER PARENT PATH : $DOCKER_PARENT_PATH"

