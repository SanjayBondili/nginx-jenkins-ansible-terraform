terraform {
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}
resource "aws_vpc" "olvpc" {
  cidr_block       = var.vpccidr
  instance_tenancy = "default"

  tags = {
    Name = "olvpc"
  }
}

