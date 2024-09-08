terraform {
  backend "s3" {
    bucket = "my-terraform-state-prod"
    key    = "eks-cluster/terraform.tfstate"
    region = "us-west-2"
  }
}
