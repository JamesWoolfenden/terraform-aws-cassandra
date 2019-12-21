resource "aws_launch_configuration" "cassandra" {
  name_prefix       = var.prefix
  image_id          = data.aws_ami.ubuntu.id
  key_name          = element(module.ssh-key.keys, 0)
  instance_type     = var.instance_type
  enable_monitoring = true

  root_block_device {
    volume_type           = "standard"
    volume_size           = 100
    delete_on_termination = false
  }

  security_groups = [aws_security_group.cassandra.id]

  lifecycle {
    create_before_destroy = true
  }

}
