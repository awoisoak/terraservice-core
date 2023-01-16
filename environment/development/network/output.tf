output "vpc" {
  description = "VPC object"
  value       = module.network.vpc
}

output "vpc2" {
  description = "VPC object"
  value       = module.network_2.vpc
}