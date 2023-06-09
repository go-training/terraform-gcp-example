terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.66.0"
    }
  }

  backend "gcs" {
    bucket = "tf-state-bucket-demo-5704c463dc9b78df"
    prefix = "terraform/state"
  }

  required_version = ">= 0.14"
}

variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

variable "zone" {
  description = "zone"
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
