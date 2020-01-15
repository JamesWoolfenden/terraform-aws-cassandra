
data "aws_subnet_ids" "private" {
  vpc_id = element(tolist(data.aws_vpcs.main.ids), 0)
  tags = {
    Name = "*private*"
  }
}

data "aws_vpcs" "main" {
  tags = {
    Name = "*poc*"
  }
}