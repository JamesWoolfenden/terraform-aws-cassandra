data "aws_ami" "ubuntu-secondary" {
  provider    = aws.secondary
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server*"]
  }

  owners = ["099720109477"]
}
