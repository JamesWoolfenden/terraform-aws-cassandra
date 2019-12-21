module "cassandra" {
  source        = "../../"
  instance_type = var.instance_type
  common_tags   = var.common_tags
  subnet_ids    = data.aws_subnet_ids.subs.ids
  providers = {
    aws = aws
  }
  allowed_ranges    = [module.myip.cidr]
  ssh-inbound-range = [module.myip.cidr]
  max_size          = 1
  min_size          = 1
}


module "myip" {
  source  = "jameswoolfenden/ip/http"
  version = "0.2.7"
}
