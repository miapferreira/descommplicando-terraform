terraform {
  backend "s3" {
    bucket = "terraform-estudoss"
    key    = "aula-locking/dynamo_db"
    region = "us-east-1"
    dynamodb_table = "descomplicando-terraform-turma-2024"
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