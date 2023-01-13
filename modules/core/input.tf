variable "project_id" {
  type        = string
  description = "Project Id"
}

variable "region" {
  type        = string
  description = "Region"
}

variable "api_service_list" {
  type        = list()
  description = "List of Service APIs"
}

variable "repository_id" {
  type        = string
  description = "Repository Id"
}