#!/bin/sh
set -e

#
# ./deploy.sh (azure|azure-local|dockerhub|dockerhub-local)

if [ "$1" = 'azure' ]; then
  ACR_PASSWORD=$(az keyvault secret show --name CDCSouravBasu-acr-admin-password --vault-name cdc-coe-souravb | jq -r .value)
  docker login $AZURE_ACR_URL -u $AZURE_ACR_USERNAME -p "$ACR_PASSWORD"
  docker buildx build \
    --platform linux/amd64 \
    --push \
    --tag $AZURE_ACR_URL/azure-hello-world .
elif [ "$1" = 'azure-local' ]; then
  docker login cdcsouravbasu.azurecr.io -u CDCSouravBasu
  docker buildx build \
    --platform linux/amd64 \
    --push \
    --tag cdcsouravbasu.azurecr.io/azure-hello-world .
elif [ "$1" = 'dockerhub' ]; then
  docker login -u "$DOCKERHUB_USERNAME" -p "$DOCKERHUB_PASSWORD"
  docker buildx build \
    --platform linux/amd64 \
    --push \
    --tag basuso/mechcode:latest .
elif [ "$1" = 'dockerhub-local' ]; then
  docker buildx build \
    --platform linux/amd64 \
    --push \
    --tag basuso/mechcode:latest .
fi
