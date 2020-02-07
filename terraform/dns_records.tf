resource "azurerm_dns_a_record" "aks_dmz_dns_records" {
  count               = length(var.aks_dmz_app_name_list)
  name                = element(values(var.aks_dmz_app_name_list[count.index]), 0)
  zone_name           = var.zone_name
  resource_group_name = var.product_resource_group_name
  ttl                 = var.ttl
  records             = ["${var.aks_dmz_lb_ip}"]
}

resource "azurerm_dns_a_record" "aks_inside_dns_records" {
  count               = length(var.aks_inside_app_name_list)
  name                = element(values(var.aks_inside_app_name_list[count.index]), 0)
  zone_name           = var.zone_name
  resource_group_name = var.product_resource_group_name
  ttl                 = var.ttl
  records             = ["${var.aks_inside_lb_ip}"]
}