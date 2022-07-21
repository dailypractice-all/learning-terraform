resource "aws_instance" "web" {
  ami           = "ami-031303182815afa6e"
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.SGID]
  tags = {
    Name = "terraform"
  }
}

variable "SGID" {}