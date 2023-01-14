resource "google_project_service" "app_services" {
  count                      = length(var.api_service_list)
  project                    = var.project_id
  service                    = var.api_service_list[count.index]
  disable_dependent_services = true
}


resource "google_artifact_registry_repository" "docker-repo" {
  provider      = google-beta
  project       = var.project_id
  location      = var.region
  repository_id = var.repository_id
  description   = "Docker repository within Artifact Registry"
  format        = "DOCKER"
  depends_on = [
    google_project_service.app_services
  ]
}