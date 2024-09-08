output "eks_role_arn" {
  value = aws_iam_role.eks_role.arn
}

output "worker_role_arn" {
  value = aws_iam_role.worker_role.arn
}
