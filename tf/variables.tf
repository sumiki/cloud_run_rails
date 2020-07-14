variable "credentials_path" {
  type = string
  default = "xxxxxx.json"
  description = "gcloud credentials path"
}

variable "project_name" {
  type = string
  default = "cloud_run_rails"
  description = "gcloud project name"
}


variable "cloud_run_name" {
  type = string
  default = "default"
  description = "cloud run service name"
}

variable "docker_image_path" {
  type = string
  default = "us.gcr.io/norcal-282302/norcal@sha256:ab303a706119b6b89872335e12c467232e9c931a5211ee5797be8e753517c5fa"
  description = "cloud run docker image path"
}
