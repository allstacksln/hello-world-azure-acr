# This is for already existing resources created outside of terraform

data "azurerm_resource_group" "rg" {
 name = "cdc-coe-souravb" # update with your existing resource group
}
#
#data "azurerm_client_config" "current" {}
#
#data "azuread_service_principal" "service_account" {
#  display_name = "cdc-coe-emmanuel-svc-acc"
#}

# not enough access
# data "azuread_user" "emmanuel_apau" {
#   # user_principal_name = "Emmanuel.Apau@coesandbox.onmicrosoft.com"
#   object_id = "d3bd4d9a-788c-437f-8b41-f856876274b4"
# }
