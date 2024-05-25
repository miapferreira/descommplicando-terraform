terraform {
  backend "s3" {
    bucket = "terraform-estudoss"
    key    = "aula_variables"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "sampa"
  region = "sa-east-1"
}