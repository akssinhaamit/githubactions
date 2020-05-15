provider "google" {
  project     = var.project
  region      = var.key_ring_location
}

terraform {
  backend "gcs" {
    bucket  = "amitwebsite_terraform_backend"
    prefix  = "terraform/state"
  }
}

resource "null_resource" "terraform-github-actions" {
 triggers = {
   value = "This resource was created using GitHub Actions!"
 }
}