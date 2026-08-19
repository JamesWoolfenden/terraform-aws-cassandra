locals {
  private_ips = [cidrhost(data.aws_subnet.a.cidr_block, 14), cidrhost(data.aws_subnet.a.cidr_block, 15), cidrhost(data.aws_subnet.a.cidr_block, 16)]
}
