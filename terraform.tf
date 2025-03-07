terraform {
  backend "s3" {
    bucket       = "anonymousobject-terraform"
    key          = "actions-demo"
    use_lockfile = true
    region       = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.4.0"
    }
  }

  required_version = ">= 1.5"
}
