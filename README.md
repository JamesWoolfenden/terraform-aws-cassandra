# terraform-aws-cassandra
A project to set up infrastructure in AWS for a multi-region Apache Cassandra cluster, I have been using AWS regions eu-west-1 and us-east-1. 

This script requires thats you pass in a value for your ssh key. In addition to the vms required for the nodes it creates an ansible host with a playbook pre-installed. 

ToDo
====
1. The Ansible host needs an ssh key to connect to the new vm host and ssh config.
2. Make the output of Terracorm create the property files for Ansible.
3. Modify Ansible hosts ip list. 
4. Execute the Ansible playbook, include a delay for each node in the cluster.
5. A test to check that the cluster and all nodes are up.
