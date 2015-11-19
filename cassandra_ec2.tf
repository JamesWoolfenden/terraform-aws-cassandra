resource "aws_instance" "aevi-tf-cassandra-node0" {
    count = "3"
    availability_zone="eu-west-1c"
    key_name = "${aws_key_pair.cassandra.key_name}"
    ami = "${lookup(var.aws_amis, var.region)}"
    instance_type = "${var.instance_type}"
    tags  = {
        "Environment" = "Development"
    }
    security_groups=["${aws_security_group.cassandra.name}"]
}

resource "aws_instance" "dev-jump" {
    availability_zone="eu-west-1c"
    key_name = "${aws_key_pair.cassandra.key_name}"
    ami = "${lookup(var.aws_amis, var.region)}"
    instance_type = "${var.instance_type}"
     tags  = {
        "Environment" = "Development"
    }
    provisioner "remote-exec" { 
	  inline = ["sudo apt-get update",
                "sudo apt-get install -y software-properties-common",
                "sudo apt-add-repository -y ppa:ansible/ansible",
                "sudo apt-get -y install git",
				"sudo apt-get update",
				"sudo apt-get install -y ansible",
				"git clone https://github.com/joeljacobson/dse-deployer.git"
				]
	  connection {
          user = "ubuntu" 
		  key_file="C:\Users\James\.ssh\cassandra"}
       }
    security_groups=["${aws_security_group.cassandra.name}"]
}

resource "aws_instance" "aevi-tf-cassandra-node3" {
    provider = "aws.useast"
    key_name = "${aws_key_pair.cassandrauseast.key_name}"
    ami = "${lookup(var.aws_amis, var.region)}"
    instance_type = "${var.instance_type}"
    tags  = {
        "Environment" = "Development"
    }
    security_groups=["${aws_security_group.cassandrauseast.name}"]
}
