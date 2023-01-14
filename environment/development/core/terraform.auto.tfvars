project_id = "terraservice-374501"
region     = "us-west1"
api_service_list = [
  "serviceusage.googleapis.com",     // Just in case is needed to enable/disable other service APIs 
  "compute.googleapis.com",          // VPC
  "artifactregistry.googleapis.com", // Artifact Registry
  "storage.googleapis.com"           // Bucket
]
repository_id = "terraservice-repo"
zone          = "us-west1-a"