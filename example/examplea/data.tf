data "aws_subnets" "subs" {
  filter {
    name   = "vpc-id"
    values = [tolist(data.aws_vpcs.main.ids)[0]]
  }
}
data "aws_vpcs" "main" {
  tags = {
    pike = "permissions"
  }
}
data "aws_caller_identity" "current" {
}
data "aws_subnet" "a" {
  id = tolist(data.aws_subnets.subs.ids)[0]
}
