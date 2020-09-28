terraform {
  required_providers {
    aws = {
      version = "3.8.0"
      source  = "hashicorp/aws"
    }

    tls = {
      version = "2.0"
    }

    http = {
      version = "1.1"
    }
  }
}
