
variable "ami" {
  description = "This is Ubuntu AMI"
  type = string
  default = "ami-0b6d9d3d33ba97d99"
}
variable "Server_type" {
  description = "This is the Type of Server"
  type = string
  default = "t2.micro"
}

variable "Server_Name" {
  description = "This is the Name for the Server"
  type = string
  default = "Web-Server"
}

variable "Key-pair" {
  description = "value"
  type = string
  default = "Class-work"
}
# variable "index.html" {
#   description = "This is a index.html data"
#   type = string
#   default = "index.html"
# }

# variable "style,css" {
#   description = "This is a style.css"
#   type = string
#   default = "style.css"
# }
variable "User-Data" {
  description = "This is the Nginx Setup User-Date"
  type = string
  default =<<-EOF
                #!/bin/bash
                sudo apt update 
                sudo apt install nginx -y
                sudo systemctl start nginx
                cd /var/www/html
                sudo rm -rf index.nginx-debian.html
                git clone https://github.com/Engg-Sayed-Abdul-Qayum/Terraform-CICD-Pipeline-on-AWS.git
                cd Terraform-CICD-Pipeline-on-AWS
                mv index.html ./..
                mv style.css ./..
                mv index.html index.nginx-debian.html
                EOF 
}



###--------------------------------------------------------------------



# variable "US-Region" {
#   description = "value"
#   type = string
#   default = "us-east-1"
# }

# variable "EU-Region" {
#   description = "value"
#   type = string
#   default = "eu-west-2"
# }

# variable "VPC-US" {
#   description = "This is us-east-1"
#   type = string
#   default = "US-VPC"
# }

# variable "US-CICR" {
#   description = "This is CIDR Block for US-VPC"
#   type = string
#   default = "120.0.0.0/16"
# }

# variable "US-IGW" {
#   description = "This is Internet-Gateway for US-VPC"
#   type = string
#   default = "US-igw"
# }

# variable "US-RT-Name" {
#   description = "This is the Route Table for US-VPC"
#   type = string
#   default = "US-RT"
# }

# variable "US-RT-Cidr" {
#   description = "This is the Route Table for US-VPC"
#   type = string
#   default = "0.0.0.0/0"
# }





# variable "VPC-EU" {
#   description = "This is eu-west-2"
#   type = string
#   default = "EU-VPC"
# }

# variable "EU-CICR" {
#   description = "value"
#   type = string
#   default = "130.0.0.0/16"
# }

# variable "EU-IGW" {
#   description = "This is Internet-Gateway for EU-VPC"
#   type = string
#   default = "EU-igw"
# }

# variable "EU-RT-Name" {
#   description = "This is the Route Table for EU-VPC"
#   type = string
#   default = "EU-RT"
# }

# variable "EU-RT-Cidr" {
#   description = "This is the Route Table for EU-VPC"
#   type = string
#   default = "0.0.0.0/0"
# }





# variable "US-Subnet" {
#   description = "This is the US-VPC Subnet"
#   type = string
#   default = "US-SN"
# }

# variable "US-SN-Cidr" {
#   description = "This is the US-VPC Subnet CIDR Block"
#   type = string
#   default = "120.0.1.0/24"
# }


# variable "EU-Subnet" {
#   description = "This is the EU-VPC Subnet"
#   type = string
#   default = "EU-SN"
# }

# variable "EU-SN-Cidr" {
#   description = "This is the EU-VPC Subnet CIDR Block"
#   type = string
#   default = "130.0.1.0/24"
# }

# variable "US-AZ" {
#   description = "value"
#   type = string
#   default = "us-east-1b"
# }

# variable "EU-AZ" {
#   description = "value"
#   type = string
#   default = "eu-west-2b"
# }


# variable "US-SG" {
#   description = "value"
#   type = string
#   default = "aws_security_group.US-SG.id"
# }

# variable "EU-SG" {
#   description = "value"
#   type = string
#   default = "aws_security_group.EU-SG.id"
# }



#------------------------ Subnet Create

variable "US-Subnet-ID" {
  description = "value"
  type = string
  default = "value"
}


variable "EU-Subnet-ID" {
  description = "value"
  type = string
  default = "value"
}

variable "US-SG" {
  description = "value"
  type = string
  default = "value"
}


variable "EU-SG" {
  description = "value"
  type = string
  default = "value"
}

