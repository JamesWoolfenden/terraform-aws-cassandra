module "ssh-key" {
  source      = "jameswoolfenden/ssh-ssm/aws"
  ssmpath     = var.ssmpath
  key_names   = var.key_names
  common_tags = var.common_tags
}

variable "ssmpath" {
  default = "/core/cassandra/ssh/dev"
}

variable "key_names" {
  type    = list
  default = ["cassandra"]
}
