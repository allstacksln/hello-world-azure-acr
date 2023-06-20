### #2 - Docker Intro

1. Ensure you have enabled Docker within your windows WSL instance
   1. https://docs.docker.com/desktop/windows/wsl/
   2. If your Ubuntu VM is still at version 1 then you will need to update it to version 2
      1. https://ericsysmin.com/2019/07/13/converting-wsl-1-operating-systems-to-wsl-2-on-windows/
2. Confirm you can run docker commands within WSL `docker ps`
3. Confirm you can run kubectl commands within WSL `kubectl version` & `kubectl config get-contexts`
4. Build the `hello-world` application via docker:
   1. cd `docker`
   2. `docker-compose build`
   3. `docker-compose up`
   4. Visit the application on your browser `http://localhost:8080/`
5. Replace the application banner image `docker/static/img/logo.png` with your own custom image
   1. rebuild the application and visit it on your browser
   2. Attach the screenshot to the issue
6. Create a dockerHub account: https://docs.docker.com/docker-id/
   1. log in via your Docker for Desktop
7. Create a repository: https://docs.docker.com/docker-hub/repos/
8. Push the image to your personal dockerhub account by editing the `deploy.sh` with your repo name
```
docker buildx build  \
   --platform linux/amd64 \
   --push \
   --tag <dockerhub_repository_name>/$(image_name):latest \
   .
   endef
```
- Run `deploy.sh`

*Azure specific Only*
9. Create an Azure container instance that creates public access
   1. Edit `terraform/container_instance.tf`
10. Visit container instance at FQDN `http://cdc-coe-eman-hello-world.eastus.azurecontainer.io/`

## Extra Credit 

Resources
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository
- https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-push-ecr-image.html
- https://learn.microsoft.com/en-us/azure/container-registry/container-registry-get-started-docker-cli?tabs=azure-cli

Instructions
- Create an Azure Container Registry (ACR)/Amazon Elastic Container Registry (Amazon ECR)  via terraform
- Push the hello-world image to ACR/ECR 
- Update the container instance to use the ACR image vs dockerHub
