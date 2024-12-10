resource "google_compute_instance" "vm1"{
    name=var.name
    machine_type = var.machine_type
    zone=var.zone
    boot_disk {
      initialize_params {
        image = var.image
      }
    }
    network_interface {
      network = var.network
      subnetwork = var.subnetwork
      access_config {
        
      }
    }
    tags = var.tags
    metadata_startup_script = file(var.startup_script_path)
    


}