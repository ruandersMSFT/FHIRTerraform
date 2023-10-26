locals {
}

resource "azurerm_windows_function_app" "this" {
  app_settings = {
    FhirFunctionAppConfigConnectionString = var.FhirFunctionAppConfigConnectionString
    WEBSITE_RUN_FROM_PACKAGE              = "1"
  }
  builtin_logging_enabled       = false
  client_certificate_mode       = "Required"
  location                      = var.location
  name                          = "${var.resource_prefix}${var.name}"
  public_network_access_enabled = false
  resource_group_name           = var.resource_group_name
  service_plan_id               = var.service_plan_id
  storage_account_access_key    = var.storage_account_access_key
  storage_account_name          = var.storage_account_name
  tags                          = var.tags
  identity {
    type = "SystemAssigned"
  }
  site_config {
    application_insights_connection_string = var.application_insights_connection_string
    ftps_state                             = "FtpsOnly"
  }
}

module "PrivateEndpoint" {
  source = "../PrivateEndpoint"

  name                = var.name
  private_dns_zone_id = var.private_dns_zone_id
  resource_group_name = var.resource_group_name
  location            = var.location
  resource_id         = azurerm_windows_function_app.this.id
  subnet_id           = var.subnet_id
  subresource_names   = ["sites"]
  tags                = var.tags
}

data "azurerm_function_app_host_keys" "this" {
  name                = "${var.resource_prefix}${var.name}"
  resource_group_name = var.resource_group_name
  depends_on          = [azurerm_windows_function_app.this]
}
