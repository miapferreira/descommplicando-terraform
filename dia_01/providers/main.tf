data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name  = "HelloWorld"
    Env   = "develop"
    Email = "mi.apferreira@gmail.com" 
  }
}

resource "aws_instance" "web-sampa" {
  ami           = var.ami
  instance_type = "t3.micro"
  provider = aws.sampa

  tags = {
    Name = "HelloWorld"
    Env  = "develop"
  }
}
