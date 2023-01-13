# VPC created with terraform-google-modules
module "vpc" {
  source          = "terraform-google-modules/network/google//modules/vpc"
  version         = "6.0.0"
  project_id      = var.project_id
  network_name    = var.network_name
  shared_vpc_host = false
}


