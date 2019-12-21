resource "aws_autoscaling_group" "cassandra" {
  launch_configuration = aws_launch_configuration.cassandra.name
  min_size             = var.min_size
  max_size             = var.max_size
  vpc_zone_identifier  = var.subnet_ids

  lifecycle {
    create_before_destroy = true
  }

  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "Cassandra"
  }
}
