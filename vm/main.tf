provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "default" {
  for_each = toset(var.num_of_servers)
  name     = each.value
  # count                     = var.num_of_servers
  # name                      = "${var.environment}${var.reg}${var.ams_id}${var.server_role}${var.os}${var.env}300${count.index}"
  machine_type              = var.machine_type
  zone                      = var.zone
  allow_stopping_for_update = true
  labels                    = var.labels

  boot_disk {
    initialize_params {
      type   = var.type
      # image  = var.image_name                    "ubuntu-os-cloud/ubuntu-1804-lts"
      image  = var.image_name
      labels = var.labels
      size   = var.size
    }
  }

  network_interface {
    subnetwork = var.subnetwork
    subnetwork_project = var.subnetwork_project
  }


  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    # email  = var.vm_service_acct
    scopes = ["cloud-platform"]
  }
}
