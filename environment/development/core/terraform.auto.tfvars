project_id = "terraservice-374501"
region     = "us-west1"
api_service_list = [
  "compute.googleapis.com",          // VPC
  "artifactregistry.googleapis.com", // Artifact Registry
  "storage.googleapis.com"           // Bucket
]
repository_id = var.repository_id