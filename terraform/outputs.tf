output "cloud_run_url" {
  description = "Default Cloud Run URL"
  value       = google_cloud_run_v2_service.site.uri
}

output "domain_mapping_status" {
  description = "Domain mapping DNS records needed"
  value       = google_cloud_run_domain_mapping.oilshock.status
}
