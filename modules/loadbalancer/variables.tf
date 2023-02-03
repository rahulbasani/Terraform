variable "lb_name" {
  type        = string
  description = "name of load balancer"
}

variable "load_sgs" {
  type        = list(any)
  description = "list of security group ids "
}

variable "subnets" {
  type        = list(any)
  description = "list of subnet ids"
}

variable "target_group_port" {
  type        = number
  description = "port number for the target group"
}

variable "lb_protocol" {
  type        = string
  description = "load balancer protocol"
}

variable "vpc_id" {
  type        = string
  description = "vpc id"
}

variable "instance_id" {
  type        = list(any)
  description = "list of instance ids"
}