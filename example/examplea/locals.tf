locals {
  ami = {
    filter = ["cassandra-BASE-v*"]
    owners = [data.aws_caller_identity.current.account_id]
  }
  # One IP per subnet, at the same index the root module assigns that subnet
  # to (subnet_ids[idx]) -- keeps each node's private_ip inside the CIDR of
  # the subnet it's actually launched into.
  private_ips = [for s in aws_subnet.cassandra : cidrhost(s.cidr_block, 14)]
}
