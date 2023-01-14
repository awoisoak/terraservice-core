module "core" {
  source           = "../../../modules/core"
  project_id       = var.project_id
  region           = var.region
  api_service_list = var.api_service_list
  repository_id    = var.repository_id
}