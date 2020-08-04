#!/bin/bash -x

DOCKER_BUILD_PATH=`pwd`
DOCKER_PARENT_PATH="$(dirname "$(dirname $DOCKER_BUILD_PATH)")"
DOCKER_DEPLOYMENT_PATH=`echo $DOCKER_PARENT_PATH/Deployment` 

echo "#####################################################"
echo "#"
echo "# DOCKER BUILD PATH : $DOCKER_BUILD_PATH"
echo "# DOCKER DEPLOYMENT PATH : $DOCKER_DEPLOYMENT_PATH"
echo "# DOCKER PARENT PATH : $DOCKER_PARENT_PATH"
echo "#"

echo "# 1. DOCKER BUILD "
docker build -t enamhee/lo2fe:0.11 -t enamhee/lo2fe:latest .

echo "# 2. DOCKER PUSH "

docker push enamhee/lo2fe

echo "# 3. KUBECTL DEPLOY "

cd $DOCKER_DEPLOYMENT_PATH

kubectl delete service/lo2fe deployment.apps/lo2fe
kubectl create -f lo2fe-deployment.yaml -f lo2fe-service.yaml