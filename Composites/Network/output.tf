# #############################################################################
# # OUTPUTS Network
# #############################################################################

output "id" {
  value = module.VirtualNetwork.id
}

output "networking_resource_group" {
  value = var.resource_group_name
}

output "name" {
  value = module.VirtualNetwork.name
}

output "subnet_id" {
  value = "${module.VirtualNetwork.id}/subnets/subnet1"
}

output "subnet2_id" {
  value = "${module.VirtualNetwork.id}/subnets/subnet2"
}

output "subnet_bastion_id" {
  value = "${module.VirtualNetwork.id}/subnets/AzureBastionSubnet"
}
