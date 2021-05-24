build {
sources=[
  "source.amazon-ebs.cassandra"
  ]

  provisioner "shell" {
     script="${path.root}/install-cassandra.sh"
  timeout      = "10s"
    }
}
