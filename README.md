# Terraform
A Terraform module containing common configurations for an AWS Web Server Architecture

-> VPC : Created a Virtual Private Cloud (VPC) and subnets where you intend to put WebServers.
-> Instance : Created a EC2 module with the configurations to launch WebServers.
-> SecurityGoroup : Created a SG module to block/allow traffic on the webserver.
-> LoadBalancer : Created a LB Module to distribute Traffic among the webservers created.

Edit the terraform.tfvars variables to create and launch distributed webservers of your own configurations.