### #5 - Terraform modules

### Resources
- https://www.youtube.com/watch?v=wgzgVm7Sqlk&t=1s
- https://www.terraform.io/language/modules/develop
- https://github.com/cdcent/cdc-coe-tf-modules

Choose your learning path based on your cloud provider

### Private Azure Module
1. Create a new GitHub repository called `hello-world-azure-acr`
2. Create necessary files to create an ACR for our hello-world container images
3. Update `azure-hello-world` terraform code to use this module [via Github](https://www.terraform.io/language/modules/sources#github)
4. remove your legacy code that created the `acr` manually so only the modules creates the acr

### Private AWS Module
1. Create a new GitHub repository called `hello-world-azure-ecr`
2. Create necessary files to create an ECR for our hello-world container images
3. Update your terraform code to use this module [via Github](https://www.terraform.io/language/modules/sources#github)
4. remove your legacy code that created the `ecr` manually so only the modules creates the acr
