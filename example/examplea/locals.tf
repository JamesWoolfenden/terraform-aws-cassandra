
locals {
  ami = {
    filter = ["cassandra-BASE-v*"]
    owners = [data.aws_caller_identity.current.account_id]
  }
}
