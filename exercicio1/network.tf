resource "google_compute_network" "tf-ex1" {
  name = "tf-ex1-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "tf-ex1" {
  name = "tf-ex1-subnetwork"
  ip_cidr_range = "10.10.10.0/24"
  region = "us-central1"
  network = "tf-ex1-network"
}