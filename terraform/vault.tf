#resource "azurerm_key_vault" "vault" {
#  name                        = local.unique_name
#  resource_group_name         = data.azurerm_resource_group.rg.name
#  location                    = data.azurerm_resource_group.rg.location
#  tenant_id                   = data.azurerm_client_config.current.tenant_id
#  enabled_for_disk_encryption = true
#  purge_protection_enabled    = false
#  soft_delete_retention_days  = 7
#
#  sku_name = "standard"
#
#  access_policy {
#    tenant_id = data.azurerm_client_config.current.tenant_id
#    object_id = data.azurerm_client_config.current.object_id
#
#    key_permissions = [
#      "Get",
#      "list",
#    ]
#
#    secret_permissions = [
#      "list",
#      "set",
#      "get",
#      "delete",
#      "purge",
#      "recover",
#      "restore"
#    ]
#
#    storage_permissions = [
#      "get",
#      "list",
#    ]
#  }
#}

# not enough access
# resource "azurerm_key_vault_access_policy" "emmanuel_access" {
#   key_vault_id = azurerm_key_vault.vault.id
#   tenant_id    = data.azurerm_client_config.current.tenant_id
#   object_id    = data.azuread_user.emmanuel_apau.object_id

#   key_permissions = [
#     "Get",
#   ]

#   secret_permissions = [
#     "list",
#     "set",
#     "get",
#     "delete",
#     "purge",
#     "recover",
#     "restore"
#   ]
# }
