locals {
  deploy_private_endpoint = (var.subnet_id != null && var.private_dns_zone_id != null)
}

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

# -
# - Setup Linux Function App
# -
resource "azurerm_linux_function_app" "this" {
  app_settings = var.app_settings
  builtin_logging_enabled    = false
  client_certificate_mode    = "Required"
  https_only                 = true
  location                   = coalesce(var.location, data.azurerm_resource_group.this.location)
  name                       = "${var.resource_prefix}${var.name}"
  resource_group_name        = var.resource_group_name
  service_plan_id            = var.service_plan_id
  storage_account_access_key = var.storage_account_access_key
  storage_account_name       = var.storage_account_name
  tags                       = var.tags
  identity {
    type = "SystemAssigned"
  }
  site_config {
    application_insights_connection_string = var.application_insights_connection_string
    application_insights_key               = var.application_insights_key
    ftps_state                             = "FtpsOnly"
    application_stack {
      dotnet_version              = "6.0"
      use_dotnet_isolated_runtime = true
    }
    dynamic "cors" {
      for_each = var.allowed_origins == null ? [] : ["fake"]
      content {
        allowed_origins = var.allowed_origins
        support_credentials = false
      }
    }
  }
}

module "PrivateEndpoint" {
  count = local.deploy_private_endpoint ? 1 : 0
  source = "../PrivateEndpoint"

  name                = var.name # todo now russell
  private_dns_zone_id = var.private_dns_zone_id
  resource_group_name = var.resource_group_name
  resource_id         = azurerm_linux_function_app.this.id
  subnet_id           = var.subnet_id
  subresource_names   = ["sites"]
  tags                = var.tags
}

data "azurerm_function_app_host_keys" "this" {
  name                = "${var.resource_prefix}${var.name}"
  resource_group_name = var.resource_group_name
  depends_on = [ azurerm_linux_function_app.this ]
}
