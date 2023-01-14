variable "project_id" {
  type        = string
  description = "List of Service APIs"
}

variable "zone" {
  type        = string
  description = "Zone"
}

variable "region" {
  type        = string
  description = "Region"
}

variable "network_name" {
  type        = string
  description = "Name for the Tokyo VPC"
}

// Will be set via TFC
variable "gcp_credentials" {
  sensitive   = true
  type        = string
  description = "GCP credentials"
}