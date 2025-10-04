locals {
  common_tags = {
    project = "networking"
    team    = "DevOps"
    owner   = "terraform"
  }
}

resource "aws_vpc" "main_vpc" {
  cidr_block           = "10.127.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = merge(local.common_tags, {
    Name = "Main_VPC"
  })
}

resource "aws_subnet" "public_subnet" {
  count      = var.public_subnet_count
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.127.${count.index + 1}.0/24" #for multiple subnets
}

resource "aws_subnet" "private_subnet" {
  count      = var.private_subnet_count
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.127.${count.index + 200}.0/24" #for multiple subnets"

  tags = merge(local.common_tags, {
    Name = "private_Subnet"
  })
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = merge(local.common_tags, {
    Name = "Internet_gateway"
  })
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

}


resource "aws_route_table_association" "public_rta" {
  count          = var.public_subnet_count
  subnet_id      = aws_subnet.public_subnet[count.index].id
  route_table_id = aws_route_table.public_rt.id
}

