locals {

}

# -
# - Private DNS Zone
# -
resource "azurerm_private_dns_zone" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

# -
# - Private DNS Zone to VNet Link
# -
resource "azurerm_private_dns_zone_virtual_network_link" "this" {
  for_each = {
    for route in var.vnet_links :
    route.zone_to_vnet_link_name => route
  }
  name                  = each.value.zone_to_vnet_link_name
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.this.name
  virtual_network_id    = each.value.virtual_network_id
  registration_enabled  = coalesce(each.value.registration_enabled, true)
  tags                  = var.tags
  depends_on            = [azurerm_private_dns_zone.this]
}