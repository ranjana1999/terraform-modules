resource "google_compute_instance" "name" {
  name=var.pvt_name
  machine_type = var.pvt_machine_type
  boot_disk {
    initialize_params {
      image=var.pvt_image
    }
  }
  network_interface {
    subnetwork = var.pvt_subnet
  }
  tags = var.tags
  metadata_startup_script = file(var.startup_script_path)

}