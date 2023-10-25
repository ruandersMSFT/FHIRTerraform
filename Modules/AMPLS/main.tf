locals {
}

# -
# - Azure Monitor Private Link Scope
# -
resource "azurerm_monitor_private_link_scope" "this" {
  name                = "${var.resource_prefix}${var.name}"
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

