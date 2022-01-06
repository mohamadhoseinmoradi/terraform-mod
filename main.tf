provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = "192.168.0.0/16"
  vpc_id      = module.vpc.vpc_id
  subnet_cidr = "192.168.10.0/24"
}

module "ec2" {
  source    = "./modules/ec2"
  ec2_count = 3
  ami_id    = "ami-061ac2e015473fbe2"
  subnet_id = module.vpc.subnet_id
  sg_id     = module.security.sg_id
}

module "security" {
  source   = "./modules/security"
  vpc_id   = module.vpc.vpc_id
  src_port = 22
  dst_port = 22
}