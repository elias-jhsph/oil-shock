variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "oil-shock-site"
}

variable "region" {
  description = "GCP region for Cloud Run"
  type        = string
  default     = "us-east1"
}

variable "domain" {
  description = "Custom domain name"
  type        = string
  default     = "oilshock.org"
}
