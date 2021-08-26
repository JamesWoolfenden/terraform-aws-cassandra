terraform {
  required_providers {
    aws = {
      version = "3.55.0"
      source  = "hashicorp/aws"
    }

    tls = {
      version = "3.1.0"
      source  = "hashicorp/tls"
    }

    http = {
      version = "2.1.0"
      source  = "hashicorp/http"
    }
  }
  required_version = ">=0.14.8"
}
