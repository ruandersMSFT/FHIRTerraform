locals {
}

module "VirtualNetwork" {
  source = "../../Modules/Network"

  location = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  resource_prefix     = var.resource_prefix
  tags                = var.tags
}
