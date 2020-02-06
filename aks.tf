module "aks" {

  source = "git@github.com:stone-payments/terraform-aks.git?ref=feat/add-support-to-node-count"

  resource_group_name         = var.product_resource_group_name
  location_name               = var.location
  name_suffix                 = var.kubernetes_service_name_suffix
  subnet_rg_name              = var.network_resource_group_name
  subnet_vnet_name            = var.virtual_network_name
  subnet_dmz_name             = var.subnet_aks_dmz_name
  subnet_inside_name          = var.subnet_aks_inside_name
  ad_client_app_id            = var.ad_client_app_id
  ad_server_app_id            = var.ad_server_app_id
  ad_tennant_id               = var.ad_tennant_id
  ad_server_app_secret        = var.ad_server_app_secret
  service_principal_app_id    = var.service_principal_app_id
  service_principal_password  = var.service_principal_password
  node_count_ins              = var.node_count_ins
  vm_size_ins                 = var.vm_size_ins
  kubernetes_version_ins      = var.kubernetes_version_ins
  load_balancer_sku_ins       = var.load_balancer_sku_ins

}