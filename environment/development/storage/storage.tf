module "storage" {
  source                      = "../../../modules/storage"
  project_id                  = var.project_id
  region                      = var.region
  uniform_bucket_level_access = var.uniform_bucket_level_access
  versioning                  = var.versioning
  bucket_name                 = var.bucket_name
  bucket_force_destroy        = var.bucket_force_destroy
}