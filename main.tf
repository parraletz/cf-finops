terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"

  default_tags {
       tags = {
         Environment = "Production"
         Project = "Infracost"
       }
  }
}

resource "aws_instance" "cfinstance" {
  ami           = "ami-00a929b66ed6e0de6"
  instance_type = "t3.micro"

  tags = {
    Name = "CFInstance"
  }
}

resource "aws_ebs_volume" "data_volumen" {
  availability_zone = "us-east-1a"
  size              = 32
  tags = {
    Name = "DataVolume"
  }
}