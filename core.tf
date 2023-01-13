locals {
  api_service_list = [
    "compute.googleapis.com"
  ]
}
# Enable API services
resource "google_project_service" "app_services" {
  count   = length(local.api_service_list)
  project = var.project_id
  service = local.api_service_list[count.index]

  disable_dependent_services = true
}
# VPC created with terraform-google-modules
module "vpc" {
  source = "terraform-google-modules/network/google//modules/vpc"
  version = "6.0.0"
  project_id = var.project_id
  network_name = var.network_name
  shared_vpc_host = false
  depends_on = [
    google_project_service.app_services
  ]
}

# VPC created manually
resource "google_compute_network" "osaka_vpc" {
  name                    = "osaka-vpc"
  auto_create_subnetworks = false
}


