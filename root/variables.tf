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

variable "sg_name" {
  type        = string
  description = "security group name"
}

variable "from_port" {
  type        = number
  description = "From Port number for ingress rule"
}

variable "to_port" {
  type        = number
  description = "To Port number for ingress rule"
}

variable "sg_cidr" {
  type        = list(any)
  description = "source traffic cidr range"
}

variable "sg_protocol" {
  type        = string
  description = "protocol for ingress rule"
}

variable "num_instances" {
  type        = number
  description = "number of instances"
  default     = 1
}
variable "ami_id" {
  type        = string
  description = "Image id"
}

variable "instance_type" {
  type        = string
  description = "type of instance"
}

variable "key_pair" {
  type        = string
  description = "Key Pair ton connect"
}

variable "is_pub" {
  type        = bool
  description = "Is instance public or private"
}

variable "ec2_name" {
  type        = string
  description = "name of ec2 instance"
}

variable "lb_name" {
  type        = string
  description = "name of load balancer"
}

variable "target_group_port" {
  type        = number
  description = "port number for the target group"
}

variable "lb_protocol" {
  type        = string
  description = "load balancer protocol"
}