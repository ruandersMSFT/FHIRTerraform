# -
# - Get the current user config
# -
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

locals {
}

# -
# - Private Endpoint
# -
resource "azurerm_private_endpoint" "this" {
  name                = var.name
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = "${var.name}-connection"
    private_connection_resource_id = var.resource_id
    is_manual_connection           = coalesce(var.approval_required, false)
    subresource_names              = var.subresource_names
  }

  private_dns_zone_group {
    name                 = "example-dns-zone-group"
    private_dns_zone_ids = [var.private_dns_zone_id]
  }

  tags = var.tags
}
