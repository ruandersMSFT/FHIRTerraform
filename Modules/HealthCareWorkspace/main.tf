locals {
  healthcare_workspace_resource_prefix_lower = lower(var.resource_prefix)
  healthcare_workspace_resource_prefix       = replace(local.healthcare_workspace_resource_prefix_lower, "-", "")
}

resource "azurerm_healthcare_workspace" "HealthCareWorkspace" {
  location            = var.location
  name                = "${local.healthcare_workspace_resource_prefix}${var.name}"
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

module "PrivateEndpoint" {
  source = "../PrivateEndpoint"

  location            = var.location
  name                = var.name
  private_dns_zone_id = var.private_dns_zone_id
  resource_group_name = var.resource_group_name
  resource_id         = azurerm_healthcare_workspace.HealthCareWorkspace.id
  subnet_id           = var.subnet_id
  subresource_names   = ["healthcareworkspace"]
  tags                = var.tags
}
