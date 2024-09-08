variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "availability_zones" {
  default = ["us-west-2a", "us-west-2b"]
}

variable "vpc_name" {
  default = "prod-vpc"
}

variable "cluster_name" {
  default = "prod-eks-cluster"
}

variable "kubernetes_version" {
  default = "1.24"
}

variable "node_groups" {
  default = {
    "default" = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "t3.medium"
    }
  }
}
