# diagram.py
from diagrams import Cluster, Diagram, Edge
from diagrams.aws.network import VPC,PrivateSubnet
from diagrams.aws.compute import EC2

graph_attr = {
    "fontsize": "28",
    "fontname": "Helvetica",
    "style": "rounded",
    "bgcolor": "transparent"
}

major_cluster ={
    "fontsize": "24",
    "fontname": "Helvetica",
    "style": "rounded",
    "bgcolor": "transparent"
}

cluster ={
    "fontsize": "16",
    "fontname": "Helvetica",
    "style": "rounded",
    "bgcolor": "transparent"
}

with Diagram("Cassandra",graph_attr=graph_attr,direction="LR"):


    with Cluster("VPC"):
        with Cluster("Security Group"):
            with Cluster("Cassandra Seeds"):
                seeds = EC2("node0") >> Edge() << EC2("node1")

            with Cluster("Cassandra Nodes"):
                workers = [EC2("node2"),EC2("node3"),EC2("node4")]


        seeds >> Edge() << workers
