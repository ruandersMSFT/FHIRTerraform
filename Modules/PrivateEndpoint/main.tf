locals {
}

resource "azurerm_private_endpoint" "this" {
  name                = "${var.name}-endpoint"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = "${var.name}-endpoint-psc"
    private_connection_resource_id = var.resource_id
    is_manual_connection           = coalesce(var.approval_required, false)
    subresource_names              = var.subresource_names
  }

  #todo russell, ip_configuration at CDC
  private_dns_zone_group {
    name                 = "example-dns-zone-group"
    private_dns_zone_ids = [var.private_dns_zone_id]
  }

  tags = var.tags
}
