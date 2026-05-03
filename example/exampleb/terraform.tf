terraform {
  required_providers {


    tls = {
      source  = "hashicorp/tls"
      version = "4.2.1"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.5.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
  }
  required_version = ">=0.14.8"
}
