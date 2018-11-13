resource "aws_key_pair" "cassandra" {
  key_name   = "cassandra"
  public_key = "${var.public_key}"
}
