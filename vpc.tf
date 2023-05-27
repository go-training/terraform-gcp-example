# VPC
resource "google_compute_network" "tf-vpc" {
  name                    = "${var.project_id}-tf-vpc"
  auto_create_subnetworks = "false"
}
