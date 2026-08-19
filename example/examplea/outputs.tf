output "cassandra" {
  description = "The cassandra module's outputs (instances, security_group)"
  value       = module.cassandra
}
output "subnet" {
  description = "The first Cassandra subnet created for the cluster"
  value       = aws_subnet.cassandra[0]
}
output "host" {
  description = "A spare host IP in the first subnet, not used by any Cassandra node"
  value       = cidrhost(aws_subnet.cassandra[0].cidr_block, 15)
}
