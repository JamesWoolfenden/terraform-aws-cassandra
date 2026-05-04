module "cassandra" {
  source        = "../../"
  instance_type = "t3.micro"
  subnet_ids    = data.aws_subnets.subs.ids
  #add the private ips
  private_ips       = local.private_ips
  allowed_ranges    = [module.myip.cidr]
  ssh-inbound-range = [module.myip.cidr]
  ami               = local.ami
  vpc_id            = tolist(data.aws_vpcs.main.ids)[0]
}
module "myip" {
  source = "git::https://github.com/JamesWoolfenden/terraform-http-ip.git?ref=2f3cef24e667fb840a3d3481f5a1aaa5a1ac7d28" #v0.3.14
}
locals {
  private_ips = [cidrhost(data.aws_subnet.a.cidr_block, 14), cidrhost(data.aws_subnet.a.cidr_block, 15), cidrhost(data.aws_subnet.a.cidr_block, 16)]
}
