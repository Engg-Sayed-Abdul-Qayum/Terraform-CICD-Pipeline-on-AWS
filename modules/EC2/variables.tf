
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

variable "User-Data" {
  description = "This is the Nginx Setup User-Date"
  type = string
  default =<<-EOF
                #!/bin/bash
                sudo apt update 
                sudo apt install nginx -y
                sudo systemctl start nginx
                cd /usr/share/nginx/html
                rm -rf index.html
                cd ~
                cp ./index.html /usr/share/nginx/html
                cp ./style.css /usr/share/nginx/html
                EOF 
}