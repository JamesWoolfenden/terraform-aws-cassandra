
output "instances" {
  value = aws_instance.cassandra
}

output "security_group" {
  value = aws_security_group.cassandra
}
