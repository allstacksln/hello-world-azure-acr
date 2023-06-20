#Create k8s cluster
module "dev" {
  source = "./modules/kubernetes_cluster"
  # insert required variables here
  name                    = local.unique_name
  resource_group_name     = data.azurerm_resource_group.rg.name
  resource_group_location = data.azurerm_resource_group.rg.location
}
