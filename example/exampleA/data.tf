data "aws_subnet_ids" "subs" {
  vpc_id = tolist(data.aws_vpcs.main.ids)[0]
}

data "aws_vpcs" "main" {
}
