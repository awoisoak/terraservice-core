module "network" {
  source           = "../../../modules/network"
  project_id = var.project_id
  region     = var.network_name
}