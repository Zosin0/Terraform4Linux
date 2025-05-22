resource "google_compute_instance" "tf-ex2" {
    name = "tf-ex2"
    machine_type = "n2-standard-2"
    zone = "us-central1-a"


    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-12"
        }
    }

    network_interface {
      network = "tf-ex2-network"
    }


}