resource "azurerm_container_registry" "acr" {
  name                     = var.container_registry_name
  resource_group_name      = var.product_resource_group_name
  location                 = var.location
  sku                      = var.container_registry_sku
}