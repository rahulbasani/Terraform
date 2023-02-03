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

module "mod_sg" {
  source      = "../modules/security_group"
  vpc_id      = module.mod_vpc.vpc_id
  sg_name     = var.sg_name
  from_port   = var.from_port
  to_port     = var.to_port
  sg_cidr     = var.sg_cidr
  sg_protocol = var.sg_protocol
}

module "mod_instance" {
  source        = "../modules/instance"
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.mod_vpc.public_subnets
  key           = var.key_pair
  is_pub        = var.is_pub
  sg_ids        = [module.mod_sg.sg_id]
  ec2_name      = var.ec2_name
}