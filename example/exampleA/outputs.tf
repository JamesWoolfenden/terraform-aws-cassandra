
output "launch_configuration" {
  value = module.cassandra.launch_configuration
}

output "security_group" {
  value = module.cassandra.security_group
}

output "scaling_group" {
  value = module.cassandra.scaling_group
}

output "vpc" {
  value = data.aws_vpcs.main.ids
}
