vpc_cidr            = "192.168.0.0/16"
vpc_tenancy         = "default"
num_public_subnets  = 1
num_private_subnets = 1
public_subnet_cidr  = ["192.168.10.0/24"]
private_subnet_cidr = ["192.168.20.0/24"]
azs                 = ["ap-southeast-1a"]