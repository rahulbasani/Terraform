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