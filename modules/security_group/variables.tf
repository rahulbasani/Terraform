variable "vpc_id" {
  type        = string
  description = "id of the vpc"
}

variable "sg_name" {
  type        = string
  description = "security group name"
}

variable "from_port" {
  type        = number
  description = "From Port number for ingress rule"
}

variable "sg_protocol" {
  type        = string
  description = "protocol for ingress rule"
}

variable "to_port" {
  type        = number
  description = "To Port number for ingress rule"
}

variable "sg_cidr" {
  type        = list(any)
  description = "source traffic cidr range"
}