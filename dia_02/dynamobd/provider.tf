terraform {
  backend "s3" {
    bucket = "terraform-estudoss"
    key    = "aula-locking/dynamo_db"
    region = "us-east-1"    
  }
  required_providers {
    s3 = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" 
}