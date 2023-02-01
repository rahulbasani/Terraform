module "mod_vpc" {
  source      = "../modules/vpc"
  vpc_cidr    = "10.10.0.0/16"
  vpc_tenancy = "default"
}