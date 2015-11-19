provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "${var.region}"
}

provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "us-east-1"
    alias = "useast"
}

resource "aws_key_pair" "cassandra" {
  key_name = "cassandra" 
  public_key ="${var.public_key}"
}

resource "aws_key_pair" "cassandrauseast" {
  provider = "aws.useast"
  key_name = "cassandra" 
  public_key ="${aws_key_pair.cassandra.public_key}"
}