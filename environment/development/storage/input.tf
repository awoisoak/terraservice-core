variable "project_id" {
  type        = string
  description = "Project Id"
}

variable "bucket_name" {
  type        = string
  description = "Bucket name"
}

variable "bucket_force_destroy" {
  type        = bool
  description = "Set force_destroy in the bucket"
}

variable "region" {
  type        = string
  description = "Bucket region"
}

variable "zone" {
  type        = string
  description = "Zone"
}

variable "uniform_bucket_level_access" {
  type        = bool
  description = "To Avoid using ACL and handle permissions exclusively through IAM"
}

variable "versioning" {
  type        = bool
  description = "Enable bucket versioning"
}

// Will be set via TFC
variable "gcp_credentials" {
  type        = string
  description = "GCP credentials"
}