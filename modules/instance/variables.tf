variable "num_instances" {
  type        = number
  description = "number of instances"
  default     = 1
}
variable "ami" {
  type        = string
  description = "Image id"
}

variable "instance_type" {
  type        = string
  description = "type of instance"
}

variable "subnet_id" {
  type        = list(any)
  description = "Subnet ids"
}

variable "key" {
  type        = string
  description = "Key Pair ton connect"
}

variable "is_pub" {
  type        = bool
  description = "Is instance public or private"
}

variable "sg_ids" {
  type        = list(any)
  description = "security group ids"
}

variable "ec2_name" {
  type        = string
  description = "name of ec2 instance"
}

variable "path" {
  type = string
}
