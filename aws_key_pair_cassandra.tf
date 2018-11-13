resource "aws_key_pair" "cassandra" {
  key_name   = "${tls_private_key.cassandra.name}"
  public_key = "${tls_private_key.cassandra.public_key_openssh}"
}

resource "tls_private_key" "cassandra" {
  algorithm = "RSA"
  rsa_bits  = "2048"
}
