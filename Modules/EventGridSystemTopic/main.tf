locals {
}

resource "azurerm_eventgrid_system_topic" "this" {
  location               = var.location
  name                   = "${var.resource_prefix}${var.name}"
  resource_group_name    = var.resource_group_name
  source_arm_resource_id = var.source_arm_resource_id
  topic_type             = var.topic_type
}
