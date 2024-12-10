resource "google_compute_instance_template" "name" {
  name=var.template_name
  machine_type = var.machine_type
  tags = var.tags
  disk{
    source_image = var.source_image
    auto_delete = false
    boot        = false
  }
  network_interface {
    network=var.network
    subnetwork = var.subnetwork
  }
  metadata_startup_script = file(var.startup_file_path)
}