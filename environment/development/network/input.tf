variable "project_id" {
  type        = string
  description = "List of Service APIs"
}

variable "zone" {
  type        = string
  description = "Zone"
}

variable "network_name" {
  type        = string
  description = "Name for the Tokyo VPC"
}

// Will be set via TFC
variable "gcp_credentials" {
  type        = string
  description = "GCP credentials"
}