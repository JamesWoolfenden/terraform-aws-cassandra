resource "aws_instance" "cassandra-node0" {
  count             = var.local_nodes
  availability_zone = "${var.region}a"
  key_name          = element(module.ssh-key.keys, 0)
  ami               = data.aws_ami.ubuntu.image_id
  instance_type     = var.instance_type

  root_block_device {
    volume_type           = "standard"
    volume_size           = 100
    delete_on_termination = false
  }

  tags = var.common_tags

  security_groups = [aws_security_group.cassandra.name]
}

resource "aws_instance" "remote-cassandra-node3" {
  provider      = aws.secondary
  key_name      = element(module.ssh-key-secondary.keys, 0)
  ami           = data.aws_ami.ubuntu-secondary.image_id
  instance_type = var.instance_type

  root_block_device {
    volume_type           = "standard"
    volume_size           = 100
    delete_on_termination = false
  }

  tags = var.common_tags

  security_groups = [aws_security_group.cassandrasecondary.name]
}
