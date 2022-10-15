####################################################
# Create GCP ThousandEyes Cloud Agent
# Author:         Robert Miller
# Created date:   Oct 2, 2022
# Modified date:  n/a
# Modification:   n/a
####################################################

provider "google" {
  credentials = file("terraform-project-62262-1e345b14d3e8.json") 
  project     = "terraform-project-62262"
  region      = "us-east1"
  zone        = "us-east1-b"
}

resource "google_compute_instance" "vm_instance" {
    name         = "thousandeyes-vm"
    machine_type = "f1-micro"

    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-11"
      }
    }

    network_interface {
      network = "default"
      access_config {

      }
    }
}