data "aws_subnets" "subs" {
  filter {
    name   = "vpc-id"
    values = [tolist(data.aws_vpcs.main.ids)[0]]
  }
}
data "aws_vpcs" "main" {
}
data "aws_caller_identity" "current" {
}
