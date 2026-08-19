locals {
  cassandra_nodes = { for idx, ip in var.private_ips : ip => {
    subnet_id = var.subnet_ids[idx]
  } }
  # Cassandra's SimpleSeedProvider wants a handful of stable seed nodes, not
  # every node in the cluster -- 3 is the conventional ceiling regardless of
  # cluster size.
  cassandra_seeds = join(",", slice(var.private_ips, 0, min(3, length(var.private_ips))))
}
