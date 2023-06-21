# AZURE
terraform {
 backend "azurerm" {
   resource_group_name  = "cdc-coe-souravb" # Update with your resource group name
   storage_account_name = "tfstatesouravb"      # Update with your storage account name
   container_name       = "tfstate"
   key                  = "azure-hello-world.terraform.tfstate"
   sas_token            = "?sv=2022-11-02&ss=bfqt&srt=co&sp=rwdlacupiytfx&se=2023-06-21T13:06:28Z&st=2023-06-21T05:06:28Z&spr=https&sig=GCeChlh%2Fj%2Fq8ANr%2Bxa%2Fj0wOxCZvJpKlcleC8GJap2JM%3D"
 }
}
#
provider "azurerm" {
 features {}
 skip_provider_registration = true

 subscription_id = "58ff5726-4156-4e39-b50d-ad0ba32ca258"
}
