resource "google_compute_instance" "jenkins-client-vm" {
  name = "jenkins-client-vm"
  machine_type = "e2-medium"
  zone = "asia-south2-b"
  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20241115"
                      }
            }
  network_interface {
    network = "projects/myfirstdevopsproject-442307/global/networks/my-vpc"
    subnetwork = "projects/myfirstdevopsproject-442307/regions/asia-south2/subnetworks/my-subnet"
                    }
}
