data "azurerm_subnet" "aks_inside" {
  resource_group_name = var.network_resource_group_name
  virtual_network_name = var.virtual_network_name
  name = var.subnet_aks_inside_name
}

data "azurerm_subnet" "aks_dmz" {
  resource_group_name = var.network_resource_group_name
  virtual_network_name = var.virtual_network_name
  name = var.subnet_aks_dmz_name
}

data "azurerm_subnet" "subnet_inside" {
  resource_group_name = var.network_resource_group_name
  virtual_network_name = var.virtual_network_name
  name = var.subnet_internal_name
}

data "azurerm_subnet" "subnet_external" {
  resource_group_name = var.network_resource_group_name
  virtual_network_name = var.virtual_network_name
  name = var.subnet_external_name
}

data "azurerm_subnet" "subnet_database" {
  resource_group_name = var.network_resource_group_name
  virtual_network_name = var.virtual_network_name
  name = var.subnet_database_name
}