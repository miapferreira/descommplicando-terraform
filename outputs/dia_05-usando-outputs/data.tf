data "aws_vpc" "giropops" {
  id = "vpc-000b6682191b61232"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name" # Filtra pelo nome da imagem
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"] # Nome da imagem
  }

  filter {
    name   = "virtualization-type" # Filtra pelo tipo de virtualizacao
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "terraform_remote_state" "aula-outputs" {
  backend = "s3"
  config = {
    bucket = "terraform-estudoss"
    key    = "aula-outputs/terraform.tfstate"
    region = "us-east-1"
  }
}