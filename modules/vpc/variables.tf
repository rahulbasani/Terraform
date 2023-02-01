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
  default     = 0
}

variable "num_private_subnets" {
  type        = number
  description = "number of private subnets to launch"
  default     = 0
}

variable "public_subnet_cidr" {
  type        = list(any)
  description = "cidr range of public subnets"
  default     = []
}

variable "private_subnet_cidr" {
  type        = list(any)
  description = "cidr range of private subnets"
  default     = []
}

variable "azs" {
  type        = list(any)
  description = "availability zones"
  default     = []
}