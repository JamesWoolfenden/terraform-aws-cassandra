terraform {
  required_providers {
    aws = {
      version = "3.20.0"
      source  = "hashicorp/aws"
    }

    tls = {
      version = "3.0.0"
      source  = "hashicorp/tls"
    }

    http = {
      version = "2.0"
      source  = "hashicorp/http"
    }
  }
}
