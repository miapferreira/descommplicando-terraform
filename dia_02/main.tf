resource "aws_s3_bucket" "ferreira_bucket" {
  bucket = "descomplicando-terraform-turma-2024"
  acl    = "private"
  tags = {
    Name = "terraform-estudo"
  } 
}