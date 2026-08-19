module "cassandra" {
  source            = "../../"
  instance_type     = var.instance_type
  subnet_ids        = data.aws_subnets.private.ids
  vpc_id            = tolist(data.aws_vpcs.main.ids)[0]
  private_ips       = local.private_ips
  allowed_ranges    = [module.myip.cidr]
  ssh_inbound_range = [module.myip.cidr]
  ami               = var.ami
}

module "myip" {
  source = "git::https://github.com/JamesWoolfenden/terraform-http-ip.git?ref=8779342084c26b571690b58aedd7f034bf3eebe8" #v0.4.1
}
