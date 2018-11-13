output "Node0_public_ip" {
  value = "${aws_instance.aevi-tf-cassandra-node0.0.public_ip}"
}

output "Node0_internal_ip" {
  value = "${aws_instance.aevi-tf-cassandra-node0.0.private_ip}"
}

output "Node1_public_ip" {
  value = "${aws_instance.aevi-tf-cassandra-node0.1.public_ip}"
}

output "Node1_internal_ip" {
  value = "${aws_instance.aevi-tf-cassandra-node0.1.private_ip}"
}

output "Node2_public_ip" {
  value = "${aws_instance.aevi-tf-cassandra-node0.2.public_ip}"
}

output "Node2_private_ip" {
  value = "${aws_instance.aevi-tf-cassandra-node0.2.private_ip}"
}

output "Node3_public_ip" {
  value = "${aws_instance.aevi-tf-cassandra-node3.public_ip}"
}

output "Node3_internal_ip" {
  value = "${aws_instance.aevi-tf-cassandra-node3.private_ip}"
}

output "dev-jump_internal_ip" {
  value = "${aws_instance.dev-jump.private_ip}"
}

output "dev-jump_public_ip" {
  value = "${aws_instance.dev-jump.public_ip}"
}