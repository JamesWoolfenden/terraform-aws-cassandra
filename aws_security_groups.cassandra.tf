resource "aws_security_group" "cassandra" {
  name        = "cassandra"
  description = "Terraform cassandra security group"

  tags = var.common_tags

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ssh-inbound-range
  }

  ingress {
    from_port   = 9042
    to_port     = 9042
    protocol    = "tcp"
    cidr_blocks = var.allowed_ranges
  }

  ingress {
    from_port   = 9160
    to_port     = 9160
    protocol    = "tcp"
    cidr_blocks = var.allowed_ranges
  }

  ingress {
    from_port   = 8888
    to_port     = 8888
    protocol    = "tcp"
    cidr_blocks = var.allowed_ranges
  }

  // allows traffic from the SG itself for tcp
  ingress {
    from_port = 0
    to_port   = 65535
    protocol  = "tcp"
    self      = true
  }

  // allow traffic for TCP 7199 (JMX)
  ingress {
    from_port   = 7199
    to_port     = 7199
    protocol    = "tcp"
    cidr_blocks = var.allowed_ranges
  }

  ingress {
    from_port   = 7000
    to_port     = 7000
    protocol    = "tcp"
    cidr_blocks = var.allowed_ranges
  }

  ingress {
    from_port   = 7001
    to_port     = 7001
    protocol    = "tcp"
    cidr_blocks = var.allowed_ranges
  }

  ingress {
    from_port   = 61620
    to_port     = 61620
    protocol    = "tcp"
    cidr_blocks = var.allowed_ranges
  }

  ingress {
    from_port   = 61621
    to_port     = 61621
    protocol    = "tcp"
    cidr_blocks = var.allowed_ranges
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = var.vpc_id
}
