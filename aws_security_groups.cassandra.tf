resource "aws_security_group" "cassandra" {
  name        = "Cassandra"
  description = "Terraform Cassandra security group"

  tags = var.common_tags

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    description = "For SSH access"
    cidr_blocks = var.ssh-inbound-range
  }

  ingress {
    from_port   = 9042
    to_port     = 9042
    protocol    = "tcp"
    description = "CSQLSH port"
    cidr_blocks = var.allowed_ranges
  }

  ingress {
    from_port   = 9160
    to_port     = 9160
    protocol    = "tcp"
    description = "Cassandra Thrift port"
    cidr_blocks = var.allowed_ranges
  }

  ingress {
    from_port   = 8888
    to_port     = 8888
    protocol    = "tcp"
    description = "opscenterd webui"
    cidr_blocks = var.allowed_ranges
  }

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    description = "allows traffic from the SG itself for TCP"
    self        = true
  }

  ingress {
    from_port   = 7199
    to_port     = 7199
    protocol    = "tcp"
    description = "allow traffic for TCP 7199 (JMX)"
    cidr_blocks = var.allowed_ranges
  }

  ingress {
    from_port   = 7000
    to_port     = 7000
    protocol    = "tcp"
    description = "7000 Inter-node cluster"
    cidr_blocks = var.allowed_ranges
  }

  ingress {
    from_port   = 7001
    to_port     = 7001
    protocol    = "tcp"
    description = "Inter-node cluster SSL"
    cidr_blocks = var.allowed_ranges
  }

  ingress {
    from_port   = 61620
    to_port     = 61620
    protocol    = "tcp"
    description = "opscenterd daemon"
    cidr_blocks = var.allowed_ranges
  }

  ingress {
    from_port   = 61621
    to_port     = 61621
    protocol    = "tcp"
    description = "opscenterd agent"
    cidr_blocks = var.allowed_ranges
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    description = "Allow outbound"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = var.vpc_id
}
