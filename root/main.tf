module "mod_vpc" {
  source              = "../modules/vpc"
  vpc_cidr            = var.vpc_cidr
  vpc_tenancy         = var.vpc_tenancy
  num_public_subnets  = var.num_public_subnets
  num_private_subnets = var.num_private_subnets
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  azs                 = var.azs
}

module "mod_ssh_sg" {
  source      = "../modules/security_group"
  vpc_id      = module.mod_vpc.vpc_id
  sg_name     = var.ssh_sg_name
  from_port   = var.ssh_from_port
  to_port     = var.ssh_to_port
  sg_cidr     = var.ssh_sg_cidr
  sg_protocol = var.sg_protocol
}

module "mod_http_sg" {
  source      = "../modules/security_group"
  vpc_id      = module.mod_vpc.vpc_id
  sg_name     = var.http_sg_name
  from_port   = var.http_from_port
  to_port     = var.http_to_port
  sg_cidr     = var.http_sg_cidr
  sg_protocol = var.sg_protocol
}

module "mod_instance" {
  source        = "../modules/instance"
  num_instances = length(module.mod_vpc.public_subnets)
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.mod_vpc.public_subnets
  key           = var.key_pair
  is_pub        = var.is_pub
  sg_ids        = [module.mod_sg.sg_id, module.mod_http_sg.sg_id]
  ec2_name      = var.ec2_name
  path          = "userdata.sh"
}

module "mod_alb" {
  source            = "../modules/loadbalancer"
  lb_name           = var.lb_name
  load_sgs          = [module.mod_sg.sg_id, module.mod_http_sg.sg_id]
  subnets           = module.mod_vpc.public_subnets
  target_group_port = var.target_group_port
  lb_protocol       = var.lb_protocol
  vpc_id            = module.mod_vpc.vpc_id
  instance_id       = module.mod_instance.instance_id
}
