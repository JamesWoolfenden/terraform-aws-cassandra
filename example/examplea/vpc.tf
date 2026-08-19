data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_vpc" "main" {
  cidr_block           = "10.42.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "terraform-aws-cassandra-examplea"
  }
}

resource "aws_default_security_group" "main" {
  vpc_id = aws_vpc.main.id
  # Deliberately no ingress/egress blocks: locks the default SG down to deny-all.
}

resource "aws_subnet" "cassandra" {
  count = 3

  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 8, count.index)
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = {
    Name = "terraform-aws-cassandra-examplea-${count.index}"
  }
}
