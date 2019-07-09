module "ssh-key-useast" {
  source      = "jameswoolfenden/ssh-ssm/aws"
  ssmpath     = "/core/cassandra/ssh/dev"
  key_names   = ["cassandra"]
  common_tags = var.common_tags
  providers = {
    aws.useast = "aws.useast"
  }
}
