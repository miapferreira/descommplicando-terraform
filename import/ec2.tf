resource "aws_instance" "mafinfo" {
    ami = "ami-0f81732f07ce19b1c"
    instance_type = "t2.micro"
    tags = {
        Name = "Mafinfo"
    }

}