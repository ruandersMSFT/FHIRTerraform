locals {
  deploy_private_endpoint = (var.subnet_id != null && var.private_dns_zone_id != null)
}

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_static_site" "this" {
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  name                = "${var.resource_prefix}${var.name}"
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

module "PrivateEndpoint" {
  count  = 1
  source = "../PrivateEndpoint"

  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  name                = var.name
  private_dns_zone_id = var.private_dns_zone_id
  resource_group_name = var.resource_group_name
  resource_id         = azurerm_static_site.this.id
  subnet_id           = var.subnet_id
  subresource_names   = ["staticSites"]
  tags                = var.tags
}
