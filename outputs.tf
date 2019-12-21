
output "launch_configuration" {
  value = aws_launch_configuration.cassandra
}

output "scaling_group" {
  value = aws_autoscaling_group.cassandra
}

output "security_group" {
  value = aws_security_group.cassandra
}
