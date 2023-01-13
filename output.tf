# Export Tokyo VPC
output "tokyo_vpc" {
  sensitive = false
  description = " Tokyo VPC"
  value       = module.vpc.network
}

# Export Osaka VPC
output "osaka_vpc" {
  sensitive = false
  description = "Osaka VPC"
  value       = google_compute_network.osaka_vpc
}
