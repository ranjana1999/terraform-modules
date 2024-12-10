resource "google_compute_instance_group_manager" "mig" {
    name = var.mig_name
    base_instance_name = var.base_instance_name
    zone=var.instance_group_zone
    version {
    instance_template = var.instance_template
    }
    target_size = var.target_size

}
