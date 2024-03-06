
module "aws_lake_formation_permission" {
  source = "./modules/lake-formation"

  bucket_register = var.lf_register.bucket_arn
  glue_arn= local.glue_arn[0]

  lf_permissions=var.lf_permissions 

  depends_on = [module.glue_crawler_mod]
}
