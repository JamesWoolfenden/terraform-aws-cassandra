resource "aws_key_pair" "cassandrauseast" {
  provider   = "aws.useast"
  key_name   = "${tls_private_key.cassandra.name}"
  public_key = "${tls_private_key.cassandra.public_key_openssh}"
}
