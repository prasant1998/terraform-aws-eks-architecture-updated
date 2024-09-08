#This file calls the VPC, EKS, and IAM modules, passing in variables and configuring the infrastructure.

provider "aws" {
  region = var.region
}

module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  availability_zones = var.availability_zones
}

module "eks" {
  source         = "./modules/eks"
  cluster_name   = var.cluster_name
  vpc_id         = module.vpc.vpc_id
  subnets        = concat(module.vpc.public_subnets, module.vpc.private_subnets)
  node_groups    = var.node_groups
  cluster_version = var.kubernetes_version
}

module "iam" {
  source         = "./modules/iam"
  cluster_name   = var.cluster_name
  node_groups    = var.node_groups
}
