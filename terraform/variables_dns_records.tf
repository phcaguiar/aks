variable "ttl" {
  description = "Value for dns record ttl."
}

variable "aks_inside_app_name_list" {
  description = "List of the inside apps name."
  type        = list
}

variable "aks_inside_app_name_list_dev" {
  description = "List of the inside apps name."
  type        = list
}

variable "aks_inside_lb_ip" {
  description = "The ip address of the aks inside loadbalancer"
}

variable "zone_name_stg" {
  description = "The name of the zone"
}

variable "zone_name_dev" {
  description = "The name of the zone"
}

variable "dns_resource_group_name" {
  
}
