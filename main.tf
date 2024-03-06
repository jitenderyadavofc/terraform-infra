
module "aws_lake_formation_permission" {
  source  = "app.terraform.io/my-birla-org/lakeformation/aws"
  version = "0.9.1"


  bucket_register = var.lf_register.bucket_arn
  glue_arn= local.glue_arn[0]

  lf_permissions=var.lf_permissions 

}






# AppFlow Module

# module "aws_appflow_mod" {
#   source = "./modules/appflow"
# }

