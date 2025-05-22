resource "google_compute_firewall" "tf-ex1"{
    name = "tf-ex1-fw"
    network = "default"


    allow {
      protocol = "tcp"
      ports = ["22"]
    }

    source_ranges = ["0.0.0.0/0"]

}
