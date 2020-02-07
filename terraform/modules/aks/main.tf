data "azurerm_subnet" "aks_inside" {
  resource_group_name = var.subnet_rg_name
  virtual_network_name = var.subnet_vnet_name
  name = var.subnet_inside_name
}

data "azurerm_subnet" "aks_dmz" {
  resource_group_name = var.subnet_rg_name
  virtual_network_name = var.subnet_vnet_name
  name = var.subnet_dmz_name
}

locals {
  aks_networks = [
    { 
      id                    = data.azurerm_subnet.aks_inside.id, 
      prefix                = "INS", 
      count                 = var.node_count_ins, 
      vm_size               = var.vm_size_ins, 
      kubernetes_version    = var.kubernetes_version_ins, 
      load_balancer_sku     = var.load_balancer_sku_ins,
      min_count             = var.min_count_ins,
      max_count             = var.max_count_ins,
      enable_auto_scaling   = var.enable_auto_scaling_ins
    }
  ]
}

# resource "azurerm_log_analytics_workspace" "aks-log-analytics-workspace" {
#     count               = var.has_dmz_cluster ? length(local.aks_networks) : 1

#     name                = "AKS-Main-${lookup(local.aks_networks[count.index], "prefix")}-${var.name_suffix}-Metrics${var.log_workspace_suffix}"
#     location            = "eastus" # It is not available in our regions
#     resource_group_name = var.resource_group_name
#     sku                 = "Standalone"
#     retention_in_days   = 40 # minimum possible, adjust for each project
# }

resource "azurerm_kubernetes_cluster" "aks" {
  count               = var.has_dmz_cluster ? length(local.aks_networks) : 1

  name                = "Main-${lookup(local.aks_networks[count.index], "prefix")}-${var.name_suffix}"
  location            = var.location_name
  dns_prefix          = "api-main-${lookup(local.aks_networks[count.index], "prefix")}-${var.name_suffix}"
  resource_group_name = var.resource_group_name
  kubernetes_version = lookup(local.aks_networks[count.index], "kubernetes_version")

  lifecycle {
    create_before_destroy = true
  }  

  default_node_pool {
    name            = "akspool"
    node_count      = lookup(local.aks_networks[count.index], "count")
    vm_size         = lookup(local.aks_networks[count.index], "vm_size")
    max_pods        = 110
    os_disk_size_gb = 50
    min_count       = lookup(local.aks_networks[count.index], "min_count")
    max_count       = lookup(local.aks_networks[count.index], "max_count")
    enable_auto_scaling = lookup(local.aks_networks[count.index], "enable_auto_scaling")
    
    # Required for advanced networking
    vnet_subnet_id = lookup(local.aks_networks[count.index], "id")
  }

  role_based_access_control {
    enabled = true
    azure_active_directory {
      client_app_id = var.ad_client_app_id
      server_app_id = var.ad_server_app_id
      server_app_secret = var.ad_server_app_secret
      tenant_id = var.ad_tennant_id
    }
  }

  # addon_profile {
  #   oms_agent {
  #     enabled = true
  #     log_analytics_workspace_id = azurerm_log_analytics_workspace.aks-log-analytics-workspace.*.id[count.index]
  #   }
  # }

  service_principal {
    client_id     = var.service_principal_app_id
    client_secret = var.service_principal_password
  }

  network_profile {
    network_plugin      = "azure"
    docker_bridge_cidr  = "192.168.128.1/17" # arbitrary, must be customized to avoid conflicts with our datacenters networks
    service_cidr        = "192.168.0.0/17" # arbitrary, must be customized to avoid conflicts with our datacenters networks
    dns_service_ip      = "192.168.0.10"
    load_balancer_sku   = lookup(local.aks_networks[count.index], "load_balancer_sku")
  }
}
