resource "azurerm_kubernetes_cluster" "dev" {
  name                = "${var.name}-cluster"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.name

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = "standard_a2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = merge(
    {
      Environment = var.name
    },
  var.tags)
}
