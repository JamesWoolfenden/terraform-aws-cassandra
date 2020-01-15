module "cassandra" {
  source        = "../../"
  instance_type = var.instance_type
  common_tags   = var.common_tags
  subnet_ids    = data.aws_subnet_ids.private.ids
  vpc_id        = tolist(data.aws_vpcs.main.ids)[0]
  providers = {
    aws = aws
  }
  allowed_ranges    = [module.myip.cidr]
  ssh-inbound-range = [module.myip.cidr]
  max_size          = 1
  min_size          = 1
  ami               = var.ami
}


variable "ami" {
  type=map
  description="Contains information to select desired AMI"
  default={
    filter=["amzn2-ami-hvm-*-x86_64-ebs"]
    owners=["amazon"]
  }
}


module "myip" {
  source  = "jameswoolfenden/ip/http"
  version = "0.2.7"
}
