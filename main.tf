provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "cfinstance" {
  ami           = "ami-00a929b66ed6e0de6"
  instance_type = "t3.micro"

  tags = {
    Name = "CFInstance"
  }
}