variable "subscription_id" {
  description = "The azure subscription id."
}

variable "location" {
  description = "The azure location."
}

variable "product_resource_group_name" {
  description = "The name of the product resource group." 
}

variable "network_resource_group_name" {
  description = "The name of the network resource group." 
}

variable "virtual_network_name" {
  description = "The name of the virtual network." 
}

variable "subnet_aks_dmz_name" {
  description = "The name of the aks dmz subnet." 
}

variable "subnet_aks_inside_name" {
  description = "The name of the aks inside subnet." 
}

variable "subnet_internal_name" {
  description = "The name of the inside subnet." 
}

variable "subnet_external_name" {
  description = "The name of the external subnet." 
}

variable "subnet_database_name" {
  description = "The name of the database subnet." 
}