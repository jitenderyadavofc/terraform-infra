data "aws_partition" "current" {}

provider "aws" {
  assume_role {
   role_arn = "arn:aws:iam::809244893916:role/oidc-role"
 }
}
