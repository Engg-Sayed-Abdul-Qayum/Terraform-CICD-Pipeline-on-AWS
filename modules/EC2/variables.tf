
variable "ami" {
  description = "This is Ubuntu AMI"
  type = string
  default = "ami-0b6d9d3d33ba97d99"
}

variable "region" {
  description = "This is the eu-west-2 region"
  type = string
  default = "eu-west-2"
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

