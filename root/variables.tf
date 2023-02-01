variable "vpc_cidr" {
  type        = string
  description = "cidr range of vpc"
}

variable "vpc_tenancy" {
  type        = string
  description = "Tenancy of vpc"
}

variable "num_public_subnets" {
  type        = number
  description = "number of public subnets to launch"
}

variable "num_private_subnets" {
  type        = number
  description = "number of private subnets to launch"
}

variable "public_subnet_cidr" {
  type        = list(any)
  description = "cidr range of public subnets"
}

variable "private_subnet_cidr" {
  type        = list(any)
  description = "cidr range of private subnets"
}

variable "azs" {
  type        = list(any)
  description = "availability zones"
}
