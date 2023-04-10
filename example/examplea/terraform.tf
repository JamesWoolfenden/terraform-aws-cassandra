terraform {
  required_providers {
    aws = {
      version = "4.62.0"
      source  = "hashicorp/aws"
    }

    tls = {
      version = "4.0.4"
      source  = "hashicorp/tls"
    }

    http = {
      version = "3.2.1"
      source  = "hashicorp/http"
    }
  }
  required_version = ">=1.3.0"
}
