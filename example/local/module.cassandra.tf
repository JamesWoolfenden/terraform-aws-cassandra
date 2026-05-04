module "cassandra" {
  source            = "../../"
  instance_type     = var.instance_type
  subnet_ids        = concat(tolist(data.aws_subnets.subs.ids), tolist(data.aws_subnets.subs.ids))
  private_ips       = var.private_ips
  allowed_ranges    = [module.myip.cidr]
  ssh-inbound-range = [module.myip.cidr]
  ami               = local.ami
  vpc_id            = tolist(data.aws_vpcs.main.ids)[0]
}
module "myip" {
  source = "git::https://github.com/JamesWoolfenden/terraform-http-ip.git?ref=2f3cef24e667fb840a3d3481f5a1aaa5a1ac7d28" #v0.3.14
}
