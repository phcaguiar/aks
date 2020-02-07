variable "ttl" {
  description = "Value for dns record ttl."
}

variable "aks_inside_app_name_list" {
  description = "List of the inside apps name."
  type        = list
}

variable "aks_inside_lb_ip" {
  description = "The ip address of the aks inside loadbalancer"
}

variable "zone_name" {
  description = "The name of the zone"
}