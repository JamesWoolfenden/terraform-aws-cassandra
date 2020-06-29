# localstack

To make the images required to apply:

```cli
instance_id=$(awslocal ec2 run-instances --image-id ami-1a2b3c4d --count 1 --instance-type c3.large --output text --query 'Instances[*].InstanceId')
awslocal ec2 create-image --name cassandra-BASE-v1 --instance-id $instance_id
```
