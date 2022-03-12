terraform {
  required_version = "~>0.13.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.5.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}