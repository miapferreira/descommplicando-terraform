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

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id # ID da imagem obtida pelo data source
  instance_type = "t3.micro"

  tags = {
    Name = var.nome
    Env  = var.env
  }
}