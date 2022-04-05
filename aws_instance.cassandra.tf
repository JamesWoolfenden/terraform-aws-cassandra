resource "aws_instance" "cassandra" {
  # checkov:skip=CKV2_AWS_17: invalid check
  count         = length(var.private_ips)
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  monitoring    = true
  private_ip    = var.private_ips[count.index]
  ebs_optimized = true

  root_block_device {
    volume_type           = "standard"
    volume_size           = 100
    delete_on_termination = false
    encrypted             = true
  }

  vpc_security_group_ids = [aws_security_group.cassandra.id]
  subnet_id              = var.subnet_ids[count.index]

  lifecycle {
    create_before_destroy = true
  }

  user_data = <<HERE
#!/bin/bash
read -d '' CONTENT << EOF
${templatefile("${path.module}/template/cassandra.tmpl", { private_ip = var.private_ips[count.index], seeds = "${var.private_ips[0]},${var.private_ips[2]}" })}
EOF
sudo echo "$CONTENT" > /etc/cassandra/conf/cassandra.yaml

yum update -y
systemctl enable cassandra
service cassandra start
HERE

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "optional"
  }
}
