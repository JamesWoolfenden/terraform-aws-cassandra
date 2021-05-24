module "cassandra" {
  source            = "../../"
  instance_type     = var.instance_type
  subnet_ids        = data.aws_subnet_ids.private.ids
  vpc_id            = tolist(data.aws_vpcs.main.ids)[0]
  ranges            = [module.myip.cidr]
  ssh-inbound-range = [module.myip.cidr]
  ami               = var.ami
}


variable "ami" {
  type        = map(any)
  description = "Contains information to select desired AMI"
  default = {
    filter = ["amzn2-ami-hvm-*-x86_64-ebs"]
    owners = ["amazon"]
  }
}


module "myip" {
  source  = "jameswoolfenden/ip/http"
  version = "0.2.7"
}
