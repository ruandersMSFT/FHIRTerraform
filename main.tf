data "azurerm_client_config" "current" {}

locals {
}

resource "azurerm_resource_group" "dex_smart" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

module "Network" {
  source = "./Composites/Network"

  resource_prefix     = var.resource_prefix
  name                = var.network_name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  depends_on = [ azurerm_resource_group.dex_smart ]
}

module "azuremonitorprivatelinkscope" {
  source = "./Modules/AMPLS"

  name                = var.azure_monitor_private_link_scope_name
  resource_prefix     = var.resource_prefix
  resource_group_name = var.resource_group_name
  tags                = var.tags

  depends_on = [ azurerm_resource_group.dex_smart ]
}

module "PrivateDnsZones" {
  source = "./Composites/PrivateDnsZones"
  count  = var.deploy_private_endpoints ? 1 : 0

  resource_group_name       = var.resource_group_name
  vnet_name                 = module.Network.name
  virtual_network_id        = module.Network.id
  networking_resource_group = module.Network.networking_resource_group

  tags                = var.tags

  depends_on = [ module.Network ]
}

locals {
  keyvault_private_dns_zone_id = var.deploy_private_endpoints ? module.PrivateDnsZones[0].keyvault_private_dns_zone_id : null
  keyvault_private_endpoint_subnet_id = var.deploy_private_endpoints ? module.Network.subnet_id : null

  staticsite_private_dns_zone_id = var.deploy_private_endpoints ? module.PrivateDnsZones[0].staticsite_private_dns_zone_id : null
  rediscache_private_dns_zone_id = var.deploy_private_endpoints ? module.PrivateDnsZones[0].rediscache_private_dns_zone_id : null
  healthcareApis_private_dns_zone_id = var.deploy_private_endpoints ? module.PrivateDnsZones[0].healthcareApis_private_dns_zone_id : null
  storageblob_private_dns_zone_id = var.deploy_private_endpoints ? module.PrivateDnsZones[0].storageblob_private_dns_zone_id : null 
  servicebus_private_dns_zone_id = var.deploy_private_endpoints ? module.PrivateDnsZones[0].servicebus_private_dns_zone_id : null
  eventgridtopic_private_dns_zone_id = var.deploy_private_endpoints ? module.PrivateDnsZones[0].eventgridtopic_private_dns_zone_id : null
  appconfig_private_dns_zone_id = var.deploy_private_endpoints ? module.PrivateDnsZones[0].appconfig_private_dns_zone_id : null
  website_private_dns_zone_id = var.deploy_private_endpoints ? module.PrivateDnsZones[0].website_private_dns_zone_id : null
}

/*
module "FHIRDeployment" {
  source = "./Composites/FHIRDeployment"

  resource_prefix = var.resource_prefix

  keyvault_resource_group_name = var.resource_group_name
  keyvault_name = var.keyvault_name
  keyvault_sku_name = var.keyvault_sku_name
  keyvault_private_dns_zone_id = local.keyvault_private_dns_zone_id
  keyvault_private_endpoint_subnet_id = local.keyvault_private_endpoint_subnet_id

  tags = var.tags

  depends_on = [ module.Network ]
}

*/