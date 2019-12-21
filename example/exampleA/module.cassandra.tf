module "cassandra" {
  source        = "../../"
  instance_type = var.instance_type
  common_tags   = var.common_tags
  providers = {
    aws           = aws
    aws.secondary = aws.useast
  }
}
