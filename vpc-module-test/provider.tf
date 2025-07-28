terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.3.0"
    }
  }
  backend "s3" {
    bucket = "khvr-remote-state"
    key    = "terraform-expense-vpc"
    region = "us-east-1"
    dynamodb_table = "khvr-tfstate-locking"
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}