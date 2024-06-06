resource "aws_instance" "mafinfo2" {
  ami           = data.aws_ami.ubuntu.id # ID da imagem obtida pelo data source
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}