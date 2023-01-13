module "storage" {
  source                      = "../../../modules/storage"
  project                     = var.project_id
  force_destroy               = var.bucket_force_destroy
  location                    = var.region
  uniform_bucket_level_access = var.uniform_bucket_level_access
  versioning                  = var.versioning
  bucket_name                 = var.bucket_name
  bucket_force_destroy        = var.bucket_force_destroy
}