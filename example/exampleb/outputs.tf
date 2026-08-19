output "instances" {
  description = "The Cassandra aws_instance resources, keyed by node private IP"
  value       = module.cassandra.instances
}

output "security_group" {
  description = "The security group attached to the Cassandra nodes"
  value       = module.cassandra.security_group
}

output "vpc" {
  description = "The VPC IDs matched by the *poc* tag filter"
  value       = data.aws_vpcs.main.ids
}
