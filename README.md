# terraform-aws-cassandra
A project to set up infrastructure in AWS for a multi-region cassandra cluster, i have been using eu-west-1 and us-east-1 regions. 

This script requires thats you pass in a value for your ssh key. In addtion to the vms required for the nodes it creates an ansible host with a playbook preinstalled. I pan to link this up with the output of terraform. 
