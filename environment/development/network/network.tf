module "network" {
  source       = "../../../modules/network"
  project_id   = var.project_id
  network_name = var.network_name
}

# Example of creating a second subnet by calling the module twice
module "network_2" {
  source       = "../../../modules/network"
  project_id   = var.project_id
  network_name = "osaka-vpc"
}