terraform {
  backend "azurerm" {
    resource_group_name  = "FinancialProducts-Common-EC2-DEV"
    storage_account_name = "tfdevfinprodscommonstone"
    container_name       = "tfstatebackend-common"
    key                  = "infra-finprods-common-dev.tfstate"
  }
}
