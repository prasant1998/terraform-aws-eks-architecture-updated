module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr = var.vpc_cidr
  availability_zones = var.availability_zones
  vpc_name = var.vpc_name
}

module "eks" {
  source = "../../modules/eks"

  cluster_name = var.cluster_name
  cluster_role_arn = module.iam.cluster_role_arn
  worker_role_arn = module.iam.worker_role_arn
  subnets = concat(module.vpc.public_subnets, module.vpc.private_subnets)
  node_groups = var.node_groups
  cluster_version = var.kubernetes_version
}

module "iam" {
  source = "../../modules/iam"
  cluster_name = var.cluster_name
}
