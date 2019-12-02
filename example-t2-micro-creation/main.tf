provider "aws" {
  profile = "linux-academy-user"
  region  = "us-east-1"
}

# makes a subnet
resource "aws_subnet" "main_subnet" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "main-subnet"
  }
}

resource "aws_instance" "webserver" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.main_subnet.id}"
}