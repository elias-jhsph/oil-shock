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

variable "image_tag" {
  description = "Container image tag (git SHA). Set by deploy.sh so each deploy rolls a new Cloud Run revision."
  type        = string
  default     = "latest"
}
