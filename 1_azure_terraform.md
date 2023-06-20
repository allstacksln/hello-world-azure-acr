### #1 - Azure/Terraform Intro
1. Login into azure with Azure CLI: `az login`
2. Create a resource group unique to your activities `cdc-coe-<your_name>` for e.g. `cdc-coe-emmanuel-apau`
   1. Create a storage account to store your terraform state `tfstate<yourname>` for e.g. `tfstate1emmanuel`
      1. **Redundancy**: LRS
         1. for cost savings
   2. Create the storage container in the storage account called `tfstate`
3. Connect your terraform cli to your azure backend by updating `terraform/_config.tf`
   1. Then run `terraform init`
4. Update `_data.tf` with your resource group name
5. Run a test plan: `terraform plan`
6. Apply the plan to create the azure resources `terraform apply`

## Resources
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
