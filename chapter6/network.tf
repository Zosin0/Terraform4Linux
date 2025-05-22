resource "google_compute_network" "tf-chapter6" {
  name = "tf-chapter6-network"
  auto_create_subnetworks = true
}

resource "google_compute_subnetwork" "tf-chapter6" {
  name = "tf-chapter6-subnetwork"
  ip_cidr_range = "10.10.10.0/24"
  region = "us-central1"
  network = "tf-chapter6-network"

}