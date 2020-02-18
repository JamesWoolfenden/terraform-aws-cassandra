data "aws_ami" "ami" {
  most_recent = true

  filter {
    name   = "name"
    values = var.ami["filter"]
  }

  owners = var.ami["owners"]
}
