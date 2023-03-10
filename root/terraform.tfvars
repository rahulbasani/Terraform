vpc_cidr            = "10.10.0.0/16"
vpc_tenancy         = "default"
num_public_subnets  = 2
num_private_subnets = 1
public_subnet_cidr  = ["10.10.10.0/24", "10.10.30.0/24"]
private_subnet_cidr = ["10.10.50.0/24"]
azs                 = ["ap-southeast-1a", "ap-southeast-1b"]
ssh_sg_name         = "ssh"
ssh_from_port       = 22
ssh_to_port         = 22
ssh_sg_cidr         = ["0.0.0.0/0"]
sg_protocol         = "tcp"
ami_id              = "ami-0b7e55206a0a22afc"
instance_type       = "t2.micro"
key_pair            = "singapore"
is_pub              = true
ec2_name            = "public"
lb_name             = "http"
target_group_port   = 80
lb_protocol         = "HTTP"
http_sg_name        = "HTTP"
http_from_port      = 80
http_to_port        = 80
http_sg_cidr        = ["0.0.0.0/0"]