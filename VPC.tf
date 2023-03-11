resource "aws_vpc" "us-east-vpc-tf" {
  cidr_block           = "192.168.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = false
  enable_dns_support   = false

  tags = {
    Name    = "us-east-vpc-tf"
    Project = "test-tf"
  }
}
resource "aws_internet_gateway" "us-east-vpc-tf-igw" {
  vpc_id = aws_vpc.us-east-vpc-tf.id

  tags = {
    Name    = "us-east-vpc-tf-igw"
    Project = "test-tf"
  }
}
resource "aws_subnet" "us-east-vpc-tf-pub-sub-1a" {
  vpc_id     = aws_vpc.us-east-vpc-tf.id
  cidr_block = "192.168.1.0/24"
  availability_zone = var.az1a
  map_public_ip_on_launch = true

  tags = {
    Name = "us-east-vpc-tf-pub-sub-1a"
    Project = "test-tf"    
  }
}

resource "aws_subnet" "us-east-vpc-tf-pub-sub-1b" {
  vpc_id     = aws_vpc.us-east-vpc-tf.id
  cidr_block = "192.168.2.0/24"
  availability_zone = var.az1b
  map_public_ip_on_launch = true

  tags = {
    Name = "us-east-vpc-tf-pub-sub-1b"
    Project = "test-tf"    
  }
}
resource "aws_subnet" "us-east-vpc-tf-priv-sub-1a" {
  vpc_id     = aws_vpc.us-east-vpc-tf.id
  cidr_block = "192.168.3.0/24"
  availability_zone = var.az1a

  tags = {
    Name = "us-east-vpc-tf-priv-sub-1a"
    Project = "test-tf"    
  }
}

resource "aws_subnet" "us-east-vpc-tf-priv-sub-1b" {
  vpc_id     = aws_vpc.us-east-vpc-tf.id
  cidr_block = "192.168.4.0/24"
  availability_zone = var.az1b

  tags = {
    Name = "us-east-vpc-tf-priv-sub-1b"
    Project = "test-tf"    
  }
}
resource "aws_subnet" "us-east-vpc-tf-rds-sub-1a" {
  vpc_id     = aws_vpc.us-east-vpc-tf.id
  cidr_block = "192.168.5.0/24"
  availability_zone = var.az1a

  tags = {
    Name = "us-east-vpc-tf-rds-sub-1a"
    Project = "test-tf"    
  }
}

resource "aws_subnet" "us-east-vpc-tf-rds-sub-1b" {
  vpc_id     = aws_vpc.us-east-vpc-tf.id
  cidr_block = "192.168.6.0/24"
  availability_zone = var.az1b

  tags = {
    Name = "us-east-vpc-tf-rds-sub-1b"
    Project = "test-tf"    
  }
}