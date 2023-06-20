resource "azurerm_container_group" "hello_world" {
  name                = "${local.unique_name}-hello-world"
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  ip_address_type     = "Public"
  dns_name_label      = "${local.unique_name}-hello-world"
  os_type             = "Linux"

  container {
    name   = "hello-world"
    image  = "${azurerm_container_registry.hello_world.login_server}/azure-hello-world"
    cpu    = "0.5"
    memory = "1"

    ports {
      port     = 80
      protocol = "TCP"
    }

  }

  image_registry_credential {
    username = azurerm_container_registry.hello_world.admin_username
    password = azurerm_container_registry.hello_world.admin_password
    server   = azurerm_container_registry.hello_world.login_server
  }
}
