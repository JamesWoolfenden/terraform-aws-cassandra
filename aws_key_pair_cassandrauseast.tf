resource "aws_key_pair" "cassandrauseast" {
  provider   = "aws.useast"
  key_name   = "cassandra"
  public_key = "${tls_private_key.cassandra.public_key_openssh}"
}
