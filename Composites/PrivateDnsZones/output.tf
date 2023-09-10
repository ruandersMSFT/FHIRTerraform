# #############################################################################
# # OUTPUTS Private DNS Zones
# #############################################################################

output "appconfig_private_dns_zone_id" {
  value = module.AppConfig_PrivateDnsZone.id
}

output "apimanagement_private_dns_zone_id" {
  value = module.APIManagement_PrivateDnsZone.id
}

output "eventgridtopic_private_dns_zone_id" {
  value = module.EventGridTopic_PrivateDnsZone.id
}

output "healthfhir_private_dns_zone_id" {
  value = module.HealthFHIR_PrivateDnsZone.id
}

output "healthworkspace_private_dns_zone_id" {
  value = module.HealthWorkspace_PrivateDnsZone.id
}

output "healthcareApis_private_dns_zone_id" {
  value = module.HealthcareApis_PrivateDnsZone.id
}

output "keyvault_private_dns_zone_id" {
  value = module.KeyVault_PrivateDnsZone.id
}

output "rediscache_private_dns_zone_id" {
  value = module.RedisCache_PrivateDnsZone.id
}

output "servicebus_private_dns_zone_id" {
  value = module.ServiceBus_PrivateDnsZone.id
}

output "staticsite_private_dns_zone_id" {
  value = module.StaticSite_PrivateDnsZone.id
}

output "storageblob_private_dns_zone_id" {
  value = module.StorageBlob_PrivateDnsZone.id
}

output "website_private_dns_zone_id" {
  value = module.WebSite_PrivateDnsZone.id
}
