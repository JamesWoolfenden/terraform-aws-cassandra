provider "aws" {
  region  = "eu-west-1"
  version = "~>2.64"
  # tfsec:ignore:AWS044
  access_key = "mock_access_key"
  # tfsec:ignore:GEN003
  secret_key                  = "mock_secret_key"
  s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    apigateway       = "http://localhost:4567"
    cloudformation   = "http://localhost:4581"
    cloudwatch       = "http://localhost:4582"
    cloudwatchlogs   = "http://localhost:4586"
    dynamodb         = "http://localhost:4569"
    dax              = "http://localhost:4570"
    ec2              = "http://localhost:4597"
    es               = "http://localhost:4578"
    cloudwatchevents = "http://localhost:4587"
    firehose         = "http://localhost:4573"
    iam              = "http://localhost:4593"
    kinesis          = "http://localhost:4568"
    kms              = "http://localhost:4599"
    lambda           = "http://localhost:4574"
    redshift         = "http://localhost:4577"
    route53          = "http://localhost:4580"
    s3               = "http://localhost:4572"
    secretsmanager   = "http://localhost:4584"
    ses              = "http://localhost:4579"
    sns              = "http://localhost:4575"
    sqs              = "http://localhost:4576"
    ssm              = "http://localhost:4583"
    stepfunctions    = "http://localhost:4585"
    sts              = "http://localhost:4592"
  }
}

provider "tls" {
  version = "2.0"
}

provider "http" {
  version = "1.1"
}
