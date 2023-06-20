## #1 - AWS/Terraform Intro
1. Login into the AWS console with Azure CLI: `az login`
2. From the AWS console manually create an S3 bucket in `us-east-1` called `cdc-tf-<your_name>`
      e.g `cdc-tf-emmanuel`
   - The click `create bucket`
   - Update `_config.tf` with your S3 bucket name

3. Connect your terraform cli to your azure backend by updating `terraform/_config.tf`
   1. Then run `terraform init`
4. Update `_data.tf` with your resource group name
5. Run a test plan: `terraform plan`
6. Apply the plan to create the azure resources `terraform apply`

## Resources
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs
