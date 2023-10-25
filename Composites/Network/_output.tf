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
  value = "${module.VirtualNetwork.id}/subnets/subnet"
}
