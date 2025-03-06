terraform {

  backend "s3" {
    bucket         = "anonymousobject-terraform"
    dynamodb_table = "terraform-lock-table"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.4.0"
    }
  }

  required_version = ">= 1.5"
}
