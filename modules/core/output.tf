output "artifact_registry" {
  description = "Artifact Registry object"
  value       = google_artifact_registry_repository.docker-repo
}
