
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
