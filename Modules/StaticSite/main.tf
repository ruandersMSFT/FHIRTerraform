locals {
}

resource "azurerm_static_site" "this" {
  location            = var.location
  name                = "${var.resource_prefix}${var.name}"
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

module "PrivateEndpoint" {
  source = "../PrivateEndpoint"

  location            = var.location
  name                = var.name
  private_dns_zone_id = var.private_dns_zone_id
  resource_group_name = var.resource_group_name
  resource_id         = azurerm_static_site.this.id
  subnet_id           = var.subnet_id
  subresource_names   = ["staticSites"]
  tags                = var.tags
}
