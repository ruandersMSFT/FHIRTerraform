locals {
  healthcare_workspace_resource_prefix_lower = lower(var.resource_prefix)
  healthcare_workspace_resource_prefix = replace(local.healthcare_workspace_resource_prefix_lower, "-", "")

  deploy_private_endpoint = (var.subnet_id != null && var.private_dns_zone_id != null)
}

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

# -
# - Custom Script with Azure Health Care Workspace
# -

resource "azurerm_healthcare_workspace" "HealthCareWorkspace" {
  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  name                = "${local.healthcare_workspace_resource_prefix}${var.name}"
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

module "PrivateEndpoint" {
  count = local.deploy_private_endpoint ? 1 : 0
  source = "../../PrivateEndpoint"

  location            = coalesce(var.location, data.azurerm_resource_group.this.location)
  name                = "health" # todo now russell
  private_dns_zone_id = var.private_dns_zone_id
  resource_group_name = var.resource_group_name
  resource_id         = azurerm_healthcare_workspace.HealthCareWorkspace.id
  subnet_id           = var.subnet_id
  subresource_names   = ["heathcareworkspace"] # todo now russell, this may not be correct for the workspace
  tags                = var.tags
}
