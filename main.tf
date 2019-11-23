provider "aws" {
  profile = "linux-academy-user"
  region  = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "main"
  }
}

# makes a subnet
resource "aws_subnet" "main" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "main-subnet"
  }
}

# this
resource "aws_instance" "webserver" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  subnet_id="${aws_subnet.main.vpc_id}"
}