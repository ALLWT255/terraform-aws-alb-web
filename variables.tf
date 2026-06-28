variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "CIDR block for vpc"
  type = string
}
variable "public_subnet_1_cidr" {
  default = "10.0.1.0/24"
  type = string 
  description = "CIDR block for public subnet 1"
}
variable "public_subnet_2_cidr" {
  default = "10.0.2.0/24"
  type = string
  description = "CIDR block for public subnet 2"
}