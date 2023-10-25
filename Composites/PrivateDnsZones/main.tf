locals {
  apimanagement_zone_name   = "privatelink.azure-api.net"
  appconfig_zone_name       = "privatelink.azconfig.io"
  eventgrid_zone_name       = "privatelink.eventgrid.azure.net"
  healthfhir_zone_name      = "privatelink.fhir.azurehealthcareapis.com"
  healthworkspace_zone_name = "privatelink.workspace.azurehealthcareapis.com"
  healthcareapis_zone_name  = "privatelink.azurehealthcareapis.com"
  keyvault_zone_name        = "privatelink.vaultcore.azure.net"
  rediscache_zone_name      = "privatelink.redis.cache.windows.net"
  servicebus_zone_name      = "privatelink.servicebus.windows.net"
  staticsite_zone_name      = "privatelink.azurestaticapps.net"
  storageblob_zone_name     = "privatelink.blob.core.windows.net"
  website_zone_name         = "privatelink.azurewebsites.net"
}

module "APIManagement_PrivateDnsZone" {
  source = "../../Modules/PrivateDnsZone"

  name                   = local.apimanagement_zone_name
  resource_group_name    = var.resource_group_name
  zone_to_vnet_link_name = substr("${local.apimanagement_zone_name}-${var.vnet_name}", 0, 80)
  virtual_network_id     = var.virtual_network_id
  tags                   = var.tags
}

module "AppConfig_PrivateDnsZone" {
  source = "../../Modules/PrivateDnsZone"

  name                   = local.appconfig_zone_name
  resource_group_name    = var.resource_group_name
  zone_to_vnet_link_name = substr("${local.appconfig_zone_name}-${var.vnet_name}", 0, 80)
  virtual_network_id     = var.virtual_network_id
  tags                   = var.tags
}

module "EventGridTopic_PrivateDnsZone" {
  source = "../../Modules/PrivateDnsZone"

  name                   = local.eventgrid_zone_name
  resource_group_name    = var.resource_group_name
  zone_to_vnet_link_name = substr("${local.eventgrid_zone_name}-${var.vnet_name}", 0, 80)
  virtual_network_id     = var.virtual_network_id
  tags                   = var.tags
}

module "HealthFHIR_PrivateDnsZone" {
  source = "../../Modules/PrivateDnsZone"

  name                   = local.healthfhir_zone_name
  resource_group_name    = var.resource_group_name
  zone_to_vnet_link_name = substr("${local.healthfhir_zone_name}-${var.vnet_name}", 0, 80)
  virtual_network_id     = var.virtual_network_id
  tags                   = var.tags
}

module "HealthWorkspace_PrivateDnsZone" {
  source = "../../Modules/PrivateDnsZone"

  name                   = local.healthworkspace_zone_name
  resource_group_name    = var.resource_group_name
  zone_to_vnet_link_name = substr("${local.healthworkspace_zone_name}-${var.vnet_name}", 0, 80)
  virtual_network_id     = var.virtual_network_id
  tags                   = var.tags
}

module "HealthcareApis_PrivateDnsZone" {
  source = "../../Modules/PrivateDnsZone"

  name                   = local.healthcareapis_zone_name
  resource_group_name    = var.resource_group_name
  zone_to_vnet_link_name = substr("${local.healthcareapis_zone_name}-${var.vnet_name}", 0, 80)
  virtual_network_id     = var.virtual_network_id
  tags                   = var.tags
}

module "KeyVault_PrivateDnsZone" {
  source = "../../Modules/PrivateDnsZone"

  name                   = local.keyvault_zone_name
  resource_group_name    = var.resource_group_name
  zone_to_vnet_link_name = substr("${local.keyvault_zone_name}-${var.vnet_name}", 0, 80)
  virtual_network_id     = var.virtual_network_id
  tags                   = var.tags
}

module "RedisCache_PrivateDnsZone" {
  source = "../../Modules/PrivateDnsZone"

  name                   = local.rediscache_zone_name
  resource_group_name    = var.resource_group_name
  zone_to_vnet_link_name = substr("${local.rediscache_zone_name}-${var.vnet_name}", 0, 80)
  virtual_network_id     = var.virtual_network_id
  tags                   = var.tags
}

module "ServiceBus_PrivateDnsZone" {
  source = "../../Modules/PrivateDnsZone"

  name                   = local.servicebus_zone_name
  resource_group_name    = var.resource_group_name
  zone_to_vnet_link_name = substr("${local.servicebus_zone_name}-${var.vnet_name}", 0, 80)
  virtual_network_id     = var.virtual_network_id
  tags                   = var.tags
}

module "StaticSite_PrivateDnsZone" {
  source = "../../Modules/PrivateDnsZone"

  name                   = local.staticsite_zone_name
  resource_group_name    = var.resource_group_name
  zone_to_vnet_link_name = substr("${local.staticsite_zone_name}-${var.vnet_name}", 0, 80)
  virtual_network_id     = var.virtual_network_id
  tags                   = var.tags
}

module "StorageBlob_PrivateDnsZone" {
  source = "../../Modules/PrivateDnsZone"

  name                   = local.storageblob_zone_name
  resource_group_name    = var.resource_group_name
  zone_to_vnet_link_name = substr("${local.storageblob_zone_name}-${var.vnet_name}", 0, 80)
  virtual_network_id     = var.virtual_network_id
  tags                   = var.tags
}

module "WebSite_PrivateDnsZone" {
  source = "../../Modules/PrivateDnsZone"

  name                   = local.website_zone_name
  resource_group_name    = var.resource_group_name
  zone_to_vnet_link_name = substr("${local.website_zone_name}-${var.vnet_name}", 0, 80)
  virtual_network_id     = var.virtual_network_id
  tags                   = var.tags
}
