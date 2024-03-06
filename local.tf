
locals {
  glue_arn = [for i, k in module.aws_iam_role_mod[var.iam_roles[1].name] :
  k.arn]
}