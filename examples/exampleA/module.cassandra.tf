module "cassandra" {
  source        = "../../"
  instance_type = "${var.instance_type}"
}
