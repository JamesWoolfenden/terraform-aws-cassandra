
output "local_nodes" {
  value = aws_instance.cassandra-node0
}

output "security_group" {
  value = aws_security_group.cassandra
}
