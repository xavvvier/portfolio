terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31"
    }
  }

  backend "s3" {
    # A single bucket can store state from multiple projects, they differ on the `key` value.
    bucket         = "xvr-tfstate"
    key            = "portfolio.tfstate"
    encrypt        = true
    region         = "us-east-1"
    dynamodb_table = "tfstate-locks"
    # Enable state locking and consistency checking via a Dynamo DB table. A single table can hold multiple remote state files.
  }
}

provider "aws" {
  region = "us-east-1"
}

data "aws_region" "current" {}

data "aws_availability_zones" "available" {}

provider "http" {}
