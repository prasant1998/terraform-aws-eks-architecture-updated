#This file contains IAM roles and policies for EKS and worker nodes.

resource "aws_iam_role" "eks_role" {
  name = "${var.cluster_name}-eks-role"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [{
      "Action" : "sts:AssumeRole",
      "Effect" : "Allow",
      "Principal" : {
        "Service" : "eks.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role" "worker_role" {
  name = "${var.cluster_name}-worker-role"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [{
      "Action" : "sts:AssumeRole",
      "Effect" : "Allow",
      "Principal" : {
        "Service" : "ec2.amazonaws.com"
      }
    }]
  })
}
