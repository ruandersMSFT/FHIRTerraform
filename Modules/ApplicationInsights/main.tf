locals {
  deploy_ampls = (var.ampls_scope_name != null)
}

resource "azurerm_application_insights" "this" {
  application_type    = var.application_type
  location            = var.location
  name                = "${var.resource_prefix}${var.name}"
  resource_group_name = var.resource_group_name
  sampling_percentage = var.sampling_percentage
  tags                = var.tags
  workspace_id        = var.workspace_id
}

resource "azurerm_monitor_private_link_scoped_service" "amplsservice" {
  count = local.deploy_ampls ? 1 : 0

  name                = "${var.name}-amplsservice"
  resource_group_name = var.resource_group_name
  scope_name          = var.ampls_scope_name
  linked_resource_id  = azurerm_application_insights.this.id
}
