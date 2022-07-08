provider "aws" {
  region = "us-east-2"
}

resource "aws-instance" "myserver" {
  ami = ""
  instance_type = var.hw
}

variable "hw" {
  type = string
  default = "t2.micro"
}

output "Public-IP" {
  value = aws_instance.myserver.public_ip
}

