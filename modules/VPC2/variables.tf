
variable "EU-Region" {
  description = "This is eu-west-2"
  type = string
  default = "eu-west-2"
}

 
variable "VPC-EU" {
  description = "This is EU-VPC Name"
  type = string
  default = "EU-VPC"
}

variable "EU-CICR" {
  description = "value"
  type = string
  default = "130.0.0.0/16"
}

variable "EU-IGW" {
  description = "This is Internet-Gateway for EU-VPC"
  type = string
  default = "EU-igw"
}

variable "EU-RT-Name" {
  description = "This is the Route Table for EU-VPC"
  type = string
  default = "EU-RT"
}

variable "EU-RT-Cidr" {
  description = "This is the Route Table for EU-VPC"
  type = string
  default = "0.0.0.0/0"
}

variable "EU-Subnet" {
  description = "This is the EU-VPC Subnet"
  type = string
  default = "EU-SN"
}

variable "EU-SN-Cidr" {
  description = "This is the EU-VPC Subnet CIDR Block"
  type = string
  default = "130.0.1.0/24"
}


variable "EU-AZ" {
  description = "value"
  type = string
  default = "eu-west-2b"
}
