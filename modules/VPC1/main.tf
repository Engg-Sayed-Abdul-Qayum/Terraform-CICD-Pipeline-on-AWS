resource "aws_vpc" "US-vpc" {
  cidr_block = var.US-CICR
  region = var.US-Region
  tags = {
    Name = var.VPC-US
  }
}

# resource "aws_vpc" "EU-vpc" {
#   cidr_block = var.EU-CICR
#   region = var.EU-Region
#   tags = {
#     Name = var.VPC-EU
#   }
# }


resource "aws_subnet" "US-Subnet" {
  cidr_block = var.US-SN-Cidr
  vpc_id = var.VPC-US
  availability_zone = var.US-AZ
  tags = {
    Name = var.US-Subnet
  }
}


# resource "aws_subnet" "EU-Subnet" {
#   cidr_block = var.EU-SN-Cidr
#   vpc_id = var.EU-SN-Cidr
#   availability_zone = var.EU-AZ
#   tags = {
#     Name = var.EU-Subnet
#   }
# }

 
resource "aws_route_table" "US-RT" {
  vpc_id = aws_vpc.US-vpc
  route = [{
    cidr_block = var.US-RT-Cidr
    gateway_id = aws_internet_gateway.US-igw.id
  }]
  tags = {
    Name = var.US-RT-Name
  }
}


# resource "aws_route_table" "EU-RT" {
#   vpc_id = aws_vpc.EU-vpc.id
#   route = {
#     cidr_block = var.EU-RT-Cidr
#     gateway_id = aws_internet_gateway.EU-igw.id
#   }
#   tags = {
#     Name = var.EU-RT-Name
#   }
# }


resource "aws_route_table_association" "US-RT-Access" {
  route_table_id = var.US-RT-Name
  subnet_id = aws_subnet.US-Subnet.id
}

# resource "aws_route_table_association" "EU-RT-Access" {
#   route_table_id = var.EU-RT-Name.id
#   subnet_id = aws_subnet.EU-Subnet.id
# }



resource "aws_internet_gateway" "US-igw" {
  vpc_id = aws_vpc.US-vpc.id
  tags = {
    Name = var.US-IGW
  }
}



# resource "aws_internet_gateway" "EU-igw" {
#   vpc_id = aws_vpc.EU-vpc.id
#   tags = {
#     Name = var.EU-IGW
#   }
# }




resource "aws_security_group" "US-SG" {
  vpc_id = aws_vpc.US-vpc.id
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
    Name = "US-SG"
  }
}


# resource "aws_security_group" "EU-SG" {
#   vpc_id = aws_vpc.EU-vpc.id
#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   tags = {
#     Name = "EU-SG"
#   }
# }





####-----------------------------


# resource "aws_instance" "Web-Server" {
#   ami = var.ami
#   instance_type = var.Server_type
#   user_data = var.User-Data
#   key_name = var.Key-pair
#   associate_public_ip_address = true
#   vpc_security_group_ids = [aws_security_group.US-SG.id]
#     tags = {
#     Name = var.Server_Name
#   }
# }


####----------------------subnet

# resource "aws_subnet" "US-Subnet" {
#   cidr_block = var.US-SN-Cidr
#   vpc_id = aws_vpc.US-vpc.id
#   tags = {
#     Name = var.US-Subnet
#   }
# }


# resource "aws_subnet" "EU-Subnet" {
#   cidr_block = var.EU-SN-Cidr
#   vpc_id = aws_vpc.EU-vpc.id
#   tags = {
#     Name = var.EU-Subnet
#   }
# }

