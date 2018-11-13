resource "aws_instance" "dev-jump" {
  availability_zone = "${var.region}a"
  key_name          = "${aws_key_pair.cassandra.key_name}"
  ami               = "${lookup(var.aws_amis, var.region)}"
  instance_type     = "${var.instance_type}"

  root_block_device {
    volume_type           = "standard"
    volume_size           = 100
    delete_on_termination = 1
  }

  user_data = <<DATA
apt-get update
apt-get install -y software-properties-common
apt-add-repository -y ppa:ansible/ansible
sudo apt-get -y install git
sudo apt-get update
sudo apt-get install -y ansible
git clone https://github.com/JamesWoolfenden/dse-deployer.git
DATA

  tags = {
    "Environment" = "Development"
  }

  security_groups = ["${aws_security_group.cassandra.name}"]
}
