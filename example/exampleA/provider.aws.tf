provider "aws" {
  region  = "eu-west-1"
  version = "2.16.0"
}

provider "aws" {
  alias   = "useast"
  region  = "us-east-1"
  version = "2.16.0"
}
