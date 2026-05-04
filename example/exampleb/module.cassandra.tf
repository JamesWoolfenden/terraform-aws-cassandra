module "cassandra" {
  source            = "../../"
  instance_type     = var.instance_type
  subnet_ids        = data.aws_subnets.private.ids
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
  source = "git::https://github.com/JamesWoolfenden/terraform-http-ip.git?ref=2f3cef24e667fb840a3d3481f5a1aaa5a1ac7d28" #v0.3.14
}
