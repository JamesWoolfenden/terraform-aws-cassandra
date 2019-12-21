module "cassandra" {
  source        = "../../"
  instance_type = var.instance_type
  common_tags   = var.common_tags
  subnet_ids    = data.aws_subnet_ids.subs.ids
  providers = {
    aws           = aws
    aws.secondary = aws.useast
  }
}
