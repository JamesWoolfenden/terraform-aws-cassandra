module "ssh-key-secondary" {
  source      = "jameswoolfenden/ssh-ssm/aws"
  ssmpath     = "/core/cassandra/ssh/dev"
  key_names   = ["cassandra"]
  common_tags = var.common_tags
  providers = {
    aws = aws.secondary
  }
}
