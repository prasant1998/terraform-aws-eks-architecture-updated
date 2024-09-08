#This file defines variables for the EKS module


variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "subnets" {
  description = "Subnets for EKS"
  type        = list(string)
}

variable "node_groups" {
  description = "Node group configuration"
  type        = map(any)
}
