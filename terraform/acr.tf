resource "azurerm_container_registry" "hello_world" {
  name                = "CDCSouravBasu"
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  sku                 = "Basic" # https://docs.microsoft.com/en-us/azure/container-registry/container-registry-skus
  admin_enabled       = true
}

# resource "azurerm_key_vault_secret" "acr_admin_password" {
#   name         = "acr-admin-password"
#   value        = azurerm_container_registry.hello_world.admin_password
#   key_vault_id = azurerm_key_vault.vault.id
# }


#module "hello_world_acr" {
#  source                  = "github.com/emmanuel-apau/hello-world-azure-acr"
#  name                    = "CDCEmmanuelApau"
#  resource_group_name     = data.azurerm_resource_group.rg.name
#  resource_group_location = data.azurerm_resource_group.rg.location
#  admin_enabled           = true
#  secret_vault_id         = azurerm_key_vault.vault.id
#}
