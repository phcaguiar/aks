resource "azurerm_dns_a_record" "aks_inside_dns_records" {
  count               = length(var.aks_inside_app_name_list)
  name                = element(values(var.aks_inside_app_name_list[count.index]), 0)
  zone_name           = var.zone_name_dev
  resource_group_name = var.dns_resource_group_name
  ttl                 = var.ttl
  records             = ["${var.aks_inside_lb_ip}"]
}

resource "azurerm_dns_a_record" "aks_inside_dns_records_dev" {
  count               = length(var.aks_inside_app_name_list_dev)
  name                = element(values(var.aks_inside_app_name_list_dev[count.index]), 0)
  zone_name           = var.zone_name_stg
  resource_group_name = var.dns_resource_group_name
  ttl                 = var.ttl
  records             = ["${var.aks_inside_lb_ip}"]
}