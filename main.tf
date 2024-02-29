# main.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.38.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"  # Change this to your desired AWS region
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "my-vpc"
  }
}

#resource "aws_subnet" "public_subnet" {
#  vpc_id                  = aws_vpc.my_vpc.id
#  cidr_block              = "10.0.1.0/24"
#  availability_zone       = "us-east-1a"  # Change this to your desired availability zone
#  map_public_ip_on_launch = true
#
#  tags = {
#    Name = "public-subnet"
#  }
#}

#resource "aws_internet_gateway" "my_igw" {
 # vpc_id = aws_vpc.my_vpc.id

#  tags = {
#    Name = "my-igw"
#  }
#}#
#
#resource "aws_route_table" "public_route_table" {
#  vpc_id = aws_vpc.my_vpc
#}
