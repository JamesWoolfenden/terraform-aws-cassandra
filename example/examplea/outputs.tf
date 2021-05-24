
output "cassandra" {
  value = module.cassandra
}

output "subnet" {
  value = data.aws_subnet.a
}

output "host" {
  value = cidrhost(data.aws_subnet.a.cidr_block, 16)
}
