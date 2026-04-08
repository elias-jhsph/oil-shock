terraform {
  required_version = ">= 1.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# ── APIs ─────────────────────────────────────────────────────────────
resource "google_project_service" "apis" {
  for_each = toset([
    "run.googleapis.com",
    "artifactregistry.googleapis.com",
    "cloudbuild.googleapis.com",
  ])
  project = var.project_id
  service = each.key
}

# ── Artifact Registry ────────────────────────────────────────────────
resource "google_artifact_registry_repository" "repo" {
  location      = var.region
  repository_id = "oil-shock"
  format        = "DOCKER"
  description   = "Oil Shock site container images"

  depends_on = [google_project_service.apis]
}

# ── Cloud Run Service ────────────────────────────────────────────────
resource "google_cloud_run_v2_service" "site" {
  name     = "oil-shock"
  location = var.region

  template {
    scaling {
      min_instance_count = 0
      max_instance_count = 2
    }

    containers {
      image = "${var.region}-docker.pkg.dev/${var.project_id}/oil-shock/site:latest"

      ports {
        container_port = 8080
      }

      resources {
        limits = {
          cpu    = "1"
          memory = "256Mi"
        }
        cpu_idle = true
      }

      startup_probe {
        http_get {
          path = "/"
        }
        initial_delay_seconds = 0
        period_seconds        = 3
        failure_threshold     = 3
      }
    }
  }

  depends_on = [google_project_service.apis, google_artifact_registry_repository.repo]
}

# ── Public access (no auth) ──────────────────────────────────────────
resource "google_cloud_run_v2_service_iam_member" "public" {
  project  = var.project_id
  location = var.region
  name     = google_cloud_run_v2_service.site.name
  role     = "roles/run.invoker"
  member   = "allUsers"
}

# ── Custom domain mapping ───────────────────────────────────────────
resource "google_cloud_run_domain_mapping" "oilshock" {
  name     = var.domain
  location = var.region

  metadata {
    namespace = var.project_id
  }

  spec {
    route_name = google_cloud_run_v2_service.site.name
  }

  depends_on = [google_cloud_run_v2_service.site]
}
