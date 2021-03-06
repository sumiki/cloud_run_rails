provider "google" {
  version = "3.5.0"

  credentials = file(var.credentials_path)

  project = var.project_name
}

resource "google_cloud_run_service" "default" {
  name     = var.cloud_run_name
  location = "us-west1"

  template {
    spec {
      containers {
        image = var.docker_image_path
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location    = google_cloud_run_service.default.location
  project     = google_cloud_run_service.default.project
  service     = google_cloud_run_service.default.name

  policy_data = data.google_iam_policy.noauth.policy_data
}
