resource "google_compute_disk" "vm-disco1" {
    name = var.disk_name[0]
    type = var.type_disk
    zone = var.zone
    size = var.size[0]
}

resource "google_compute_disk" "vm-disco2" {
    name = var.disk_name[1]
    type = var.type_disk
    zone = var.zone
    size = var.size[1]
}