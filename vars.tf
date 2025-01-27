variable "aws_region" {    
    default = "us-east-1"
}

variable "ami" {
    default = "ami-0ac4dfaf1c5c0cce9"  
}

variable "instance_type" {
    default = "t2.micro"
  
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24"
  ]
}

variable "private_subnet_cidrs" {
  default = [
    "10.0.101.0/24",
    "10.0.102.0/24",
    "10.0.103.0/24"
  ]
}