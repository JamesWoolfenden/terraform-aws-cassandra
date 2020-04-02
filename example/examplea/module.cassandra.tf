module "cassandra" {
  source        = "../../"
  instance_type = var.instance_type
  common_tags   = var.common_tags
  subnet_ids    = data.aws_subnet_ids.subs.ids
  #add the private ips
  private_ips       = []
  allowed_ranges    = [module.myip.cidr]
  ssh-inbound-range = [module.myip.cidr]
  ami               = local.ami
  vpc_id            = tolist(data.aws_vpcs.main.ids)[0]
}


module "myip" {
  source  = "jameswoolfenden/ip/http"
  version = "0.2.7"
}
