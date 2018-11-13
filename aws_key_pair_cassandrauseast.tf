resource "aws_key_pair" "cassandrauseast" {
  provider   = "aws.useast"
  key_name   = "cassandra"
  public_key = "${aws_key_pair.cassandra.public_key}"
}
