variable "kubernetes_service_name_suffix" {
  description = "The suffix name of the kubernetes cluster." 
}

variable "ad_client_app_id" {
  description = "The Client ID of an Azure Active Directory Application that will be used to activate AD based authentication on the cluster." 
}

variable "ad_server_app_id" {
  description = "The Server ID of the above AD application." 
}

variable "ad_tennant_id" {
  description = "The Tenant ID of the above AD application." 
}

variable "ad_server_app_secret" {
  description = "The Client Secret of the above AD application." 
}

variable "service_principal_app_id" {
  description = "The appId of the service principal that will be used by the cluster to interact with Azure." 
}

variable "service_principal_password" {
  description = "The password of the service principal above." 
}

variable "node_count_ins" { 
  description = "Specifies Cluster's number of nodes to Inside Cluster. The default value is 2, only specifies if needs to be changed." 
}

variable "vm_size_ins" {
  description = "Specifies the size of the Virtual Machine to Inside Cluster."
}

variable "kubernetes_version_ins" {
  description = "Specifies Kubernetes version to Inside Cluster. The default value is 1.15.7, only specifies if needs to be changed." 
}

variable "load_balancer_sku_ins" {
  description = "Specifies Cluster's load balancer sku to Inside Cluster."
}

# variable "node_count_dmz" {
#   description = "Specifies Cluster's number of nodes to Inside Cluster. The default value is 2, only specifies if needs to be changed." 
# }

# variable "vm_size_dmz" {
#   description = "Specifies the size of the Virtual Machine to DMZ Cluster." 
# }

# variable "kubernetes_version_dmz" {
#   description = "Specifies Kubernetes version to Inside Cluster. The default value is 1.15.7, only specifies if needs to be changed." 
# }

# variable "load_balancer_sku_dmz" {
#   description = "Specifies Cluster's load balancer sku to Inside Cluster."
# }