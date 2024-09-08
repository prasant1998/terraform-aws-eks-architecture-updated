terraform {
  backend "s3" {
    bucket = "my-terraform-state-dev"
    key    = "eks-cluster/terraform.tfstate"
    region = "us-west-2"
  }
}
