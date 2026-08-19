# holden:ignore:HLD_TF_004: its an example
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.2.1"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.5.0"
    }
  }
  required_version = ">=1.9.0"
}
