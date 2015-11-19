output "Node0 public ip" {
    value = "${aws_instance.aevi-tf-cassandra-node0.0.public_ip}"}

output "Node0 internal ip" {
	value = "${aws_instance.aevi-tf-cassandra-node0.0.private_ip}"}

output "Node1 public ip" {
	value = "${aws_instance.aevi-tf-cassandra-node0.1.public_ip}"}

output "Node1 internal ip" {
	value = "${aws_instance.aevi-tf-cassandra-node0.1.private_ip}"}

output "Node2 public ip" {
    value = "${aws_instance.aevi-tf-cassandra-node0.2.public_ip}"}

output "Node2 private ip" {
	value = "${aws_instance.aevi-tf-cassandra-node0.2.private_ip}"}

output "Node3 public ip" {
	value = "${aws_instance.aevi-tf-cassandra-node3.public_ip}"}

output "Node3 internal ip" {
	value = "${aws_instance.aevi-tf-cassandra-node3.private_ip}"}

output "dev-jump internal ip" {
	value = "${aws_instance.dev-jump.private_ip}"}

output "dev-jump public ip" {
	value = "${aws_instance.dev-jump.public_ip}"}