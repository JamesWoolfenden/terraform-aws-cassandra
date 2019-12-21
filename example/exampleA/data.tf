data "aws_subnet_ids" "subs" {
  vpc_id = data.aws_vpcs.main.id
}

data "aws_vpcs" "main" {
}
