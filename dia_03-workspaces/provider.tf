terraform {
  backend "s3" {
    bucket = "terraform-estudoss"
    key    = "aula-workspaces/terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  } 
}
provider "aws" {
  region = "us-east-1"
}