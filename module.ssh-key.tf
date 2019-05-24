module "ssh-key" {
  source      = "jameswoolfenden/ssh-ssm/aws"
  ssmpath     = "/core/cassandra/ssh/dev"
  key_names   = ["cassandra"]
  common_tags = var.common_tags
}
