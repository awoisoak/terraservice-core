resource "google_storage_bucket" "default" {
  project                     = var.project_id
  name                        = var.bucket_name
  force_destroy               = var.bucket_force_destroy
  location                    = var.region
  uniform_bucket_level_access = var.uniform_bucket_level_access

  versioning {
    enabled = var.versioning
  }
}

