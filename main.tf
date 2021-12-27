terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

<<<<<<< HEAD
# we need to create a vpc resource
resource "aws_vpc" "olvpc" {
    cidr_block = "192.168.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true

    tags = {
      "Name" = "ol-vpc"
    }
  
=======
# resource "aws_instance" "app_server" {
#   ami           = "ami-00f7e5c52c0f43726"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "ExampleAppServerInstance"
#   }
# }
resource "aws_vpc" "olvpc" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "olvpc"
  }
}
resource "aws_subnet" "web1" {
  vpc_id     = aws_vpc.olvpc.id
  cidr_block = "192.168.0.0/24"

  tags = {
    Name = "web1"
  }
}
resource "aws_subnet" "web2" {
  vpc_id     = aws_vpc.olvpc.id
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "web2"
  }
>>>>>>> e636937a4ee42e8807c06ee38d72c6689ee7d5e8
}