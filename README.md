# terraform-aws-cassandra
A project to set up infrastructure in AWS for a multi-region Apache Cassandra cluster, I have been using AWS regions eu-west-1 and us-east-1.

This script requires thats you pass in a value for your ssh key. In addition to the vms required for the nodes it creates an ansible host with a playbook pre-installed.

To Do
====
1. The Ansible host needs an ssh key to connect to the new vm host and ssh config.
2. Make the output of Terraform create the property files for Ansible.
3. Modify Ansible hosts ip list.
4. Execute the Ansible playbook, include a delay for each node in the cluster.
5. A test to check that the cluster and all nodes are up.
6. This should be in some private subnets of a vpc. Theres no reason to make it so public.
7. The SC groups are wide open.
8. The nodes having public IPS its way to open, you need to peer the vpcs across regions so that cassandra could replicate.
9. Keep the bastion in a seperate tf implementation so it can be deprovision.
10. Fix the routing/access so that ssh has to come via the bastion.
11. Use data resources to get the AMIs required.
12. Move the cassandra creation/installation to packer.
