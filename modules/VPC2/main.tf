
resource "aws_vpc" "EU-vpc" {
  cidr_block = var.EU-CICR
  region = var.EU-Region
  tags = {
    Name = var.VPC-EU
  }
}



resource "aws_subnet" "EU-Subnet" {
  cidr_block = var.EU-SN-Cidr
  vpc_id = var.EU-SN-Cidr
  availability_zone = var.EU-AZ
  tags = {
    Name = var.EU-Subnet
  }
}




resource "aws_route_table" "EU-RT" {
  vpc_id = aws_vpc.EU-vpc.id
  route = [{
    cidr_block = var.EU-RT-Cidr
    gateway_id = aws_internet_gateway.EU-igw.id
  }]
  tags = {
    Name = var.EU-RT-Name
  }
}

resource "aws_route_table_association" "EU-RT-Access" {
  route_table_id = var.EU-RT-Name
  subnet_id = aws_subnet.EU-Subnet.id
}


resource "aws_internet_gateway" "EU-igw" {
  vpc_id = aws_vpc.EU-vpc.id
  tags = {
    Name = var.EU-IGW
  }
}



resource "aws_security_group" "EU-SG" {
  vpc_id = aws_vpc.EU-vpc.id
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "EU-SG"
  }
}


