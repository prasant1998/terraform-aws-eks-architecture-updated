variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "node_groups" {
  description = "Node group configuration"
  type        = map(any)
}
