variable "resource_group_name" {}

variable "location_name" {}

variable "name_suffix" {}

variable "has_dmz_cluster" {
    description = "If true, the module will declare the AKS DMZ cluster resources. Otherwise they won't be created."
    default = true
}

variable "log_workspace_suffix" {
    description = "Suffix to be appended to Log Analytics Workspace, to avoid name colisions."
    default = ""
    # See https://github.com/MicrosoftDocs/azure-docs/issues/35143
}

variable "subnet_rg_name" {}

variable "subnet_vnet_name" {}

variable "subnet_dmz_name" {}

variable "subnet_inside_name" {}

variable "ad_client_app_id" {}

variable "ad_server_app_id" {}

variable "ad_tennant_id" {}

variable "ad_server_app_secret" {}

variable "service_principal_app_id" {}

variable "service_principal_password" {}

variable "enable_auto_scaling_ins" {
    default = "false"
}

variable "min_count_ins" {
    default = null
    type = string
}

variable "max_count_ins" {
    default = null
    type = string
}

variable "vm_size_ins" {
    default = "Standard_F8s_v2"
}

variable "node_count_ins" {
    default = "2"
}

variable "kubernetes_version_ins" {
    default = "1.15.7"
}

variable "load_balancer_sku_ins" {
    default = "basic"
}