locals {
}

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_redis_cache" "this" {
  name                = "${var.resource_prefix}${var.name}"
  resource_group_name = var.resource_group_name
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  capacity            = var.capacity
  family              = contains(["Basic", "Standard"], var.sku) == true ? "C" : "P"
  sku_name            = coalesce(var.sku, "Standard")

  enable_non_ssl_port = var.enable_non_ssl_port
  minimum_tls_version = var.minimum_tls_version

  lifecycle {
    ignore_changes = [redis_configuration.0.rdb_storage_connection_string]
  }

  tags = var.tags
}

/*
# -
# - Azure Redis Cache Firewall Rule
# -
resource "azurerm_redis_firewall_rule" "this" {
  count               = length(var.firewall_rules)
  name                = element(var.firewall_rules, count.index)["name"]
  resource_group_name = var.resource_group_name
  redis_cache_name    = var.name
  start_ip            = element(var.firewall_rules, count.index)["start_ip_address"]
  end_ip              = element(var.firewall_rules, count.index)["end_ip_address"]
  depends_on          = [azurerm_redis_cache.this]
}
*/

module "PrivateEndpoint" {
  source = "../PrivateEndpoint"

  name                = var.name
  private_dns_zone_id = var.private_dns_zone_id
  resource_group_name = var.resource_group_name
  resource_id         = azurerm_redis_cache.this.id
  subnet_id           = var.subnet_id
  subresource_names   = ["redisCache"]
  tags                = var.tags
}
