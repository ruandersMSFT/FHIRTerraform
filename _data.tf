# This is for already existing resources created outside of terraform
data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "mgt" {
  name = "ocio-ede-dev-moderate-management-hl7-rg"
}
