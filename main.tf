
module "aws_lake_formation_register" {
  source          = "./modules/lake-formation/lf-register-location"
  bucket_register = var.lf_register.bucket_arn
}


module "aws_lake_formation_permission" {
  source = "./modules/lake-formation/lf-permissions"

  for_each = { for idx, details in var.lf_permissions : idx => details if length(var.lf_permissions) > 0 }

  lake_permissions = each.value.lake_permissions
  principle_arn    = local.glue_arn[0]
  db_name          = each.value.db_name

  depends_on = [module.glue_crawler_mod, module.aws_lake_formation_register]
}






# AppFlow Module

# module "aws_appflow_mod" {
#   source = "./modules/appflow"
# }