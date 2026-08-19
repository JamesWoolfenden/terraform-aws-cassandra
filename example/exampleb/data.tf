data "aws_subnets" "private" {
  filter {
    name   = "vpc-id"
    values = [element(tolist(data.aws_vpcs.main.ids), 0)]
  }
  tags = {
    Name = "*private*"
  }
}

data "aws_vpcs" "main" {
  tags = {
    Name = "*poc*"
  }
}

data "aws_subnet" "a" {
  id = tolist(data.aws_subnets.private.ids)[0]
}
