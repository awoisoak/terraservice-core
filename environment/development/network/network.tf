module "network" {
  source     = "../../../modules/network"
  project_id = var.project_id
  network_name     = var.network_name
}