

module "lakeformation" {
  source  = "app.terraform.io/my-birla-org/lakeformation/aws"
  version = "0.9.4"

  bucket_register = var.lf_register.bucket_arn
  glue_arn= "arn:aws:iam::809244893916:role/service-role/AWSGlueServiceRole-ingestplayers"

  lf_permissions=var.lf_permissions 

}






# AppFlow Module

# module "aws_appflow_mod" {
#   source = "./modules/appflow"
# }

