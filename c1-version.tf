# Terraform Block
terraform {
  required_version = "~> 1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    # Random Provider
    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }
  }
  /*
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "eks-test-backend"
    key    = "test/terraform.tfstate"
    region = "eu-west-2"

    #dynamodb_table = "terraform-dev-state-table"

  }
  */
}

# Provider Block
provider "aws" {
  region  = "eu-west-2"
  profile = "default"
}
/*
# Provider-2 for us-west-1
provider "aws" {
  region  = "us-west-1"
  profile = "default"
  alias   = "aws-west-1"
}
*/