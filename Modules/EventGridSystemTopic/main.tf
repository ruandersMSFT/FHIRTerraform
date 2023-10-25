locals {
}

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_eventgrid_system_topic" "this" {
  location               = coalesce(var.location, data.azurerm_resource_group.this.location)
  name                   = "${var.resource_prefix}${var.name}"
  resource_group_name    = var.resource_group_name
  source_arm_resource_id = var.source_arm_resource_id
  topic_type             = var.topic_type
}
