module "cassandra" {
  source        = "../../"
  instance_type = "t3.micro"
  subnet_ids    = aws_subnet.cassandra[*].id
  #add the private ips
  private_ips       = local.private_ips
  allowed_ranges    = [module.myip.cidr]
  ssh_inbound_range = [module.myip.cidr]
  ami               = local.ami
  vpc_id            = aws_vpc.main.id
}

module "myip" {
  source = "git::https://github.com/JamesWoolfenden/terraform-http-ip.git?ref=8779342084c26b571690b58aedd7f034bf3eebe8" #v0.4.1
}
