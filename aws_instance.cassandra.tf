resource "aws_instance" "cassandra" {
  for_each = local.cassandra_nodes

  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  monitoring    = true
  private_ip    = each.key
  ebs_optimized = true

  root_block_device {
    volume_type           = "gp3"
    volume_size           = var.volume_size
    delete_on_termination = false
    encrypted             = true
  }

  vpc_security_group_ids  = [aws_security_group.cassandra.id]
  subnet_id               = each.value.subnet_id
  disable_api_termination = var.disable_api_termination

  user_data = <<HERE
#!/bin/bash
read -d '' CONTENT << EOF
${templatefile("${path.module}/template/cassandra.tmpl", { private_ip = each.key, seeds = local.cassandra_seeds, internode_encryption = var.internode_encryption, client_encryption_enabled = var.client_encryption_enabled, keystore_password = var.keystore_password, truststore_password = var.truststore_password })}
EOF
sudo echo "$CONTENT" > /etc/cassandra/conf/cassandra.yaml
chown cassandra:cassandra /etc/cassandra/conf/cassandra.yaml && chmod 600 /etc/cassandra/conf/cassandra.yaml

yum update -y
systemctl enable cassandra
service cassandra start
HERE

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }
  iam_instance_profile = var.iam_instance_profile
}
