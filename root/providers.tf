terraform {
  backend "s3" {
    bucket = "statefilesterraform"
    key    = "modules/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "TerraformStateLocking"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}