locals {
  unique_name = "cdc-coe-souravb" # update with your unique name
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "vpc" {
  name                = "${local.unique_name}-network"
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  address_space       = ["10.1.0.0/16"]
} 