# -
# - Get the current user config
# -
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

locals {
  deploy_ampls = (var.ampls_scope_name != null)
}

# -
# - Create Log Analytics Workspace
# -
resource "azurerm_log_analytics_workspace" "this" {
  name                = "${var.resource_prefix}${var.name}"
  resource_group_name = var.resource_group_name
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)

  sku               = var.sku
  retention_in_days = var.retention_in_days

  tags = var.tags
}

resource "azurerm_monitor_private_link_scoped_service" "amplsservice" {
  count = local.deploy_ampls ? 1 : 0

  name                = "${var.name}-amplsservice"
  resource_group_name = var.resource_group_name
  scope_name          = var.ampls_scope_name
  linked_resource_id  = azurerm_log_analytics_workspace.this.id
}
