output "instances" {
  description = "The Cassandra aws_instance resources, keyed by node private IP"
  value       = aws_instance.cassandra
}
output "security_group" {
  description = "The security group attached to the Cassandra nodes"
  value       = aws_security_group.cassandra
}
