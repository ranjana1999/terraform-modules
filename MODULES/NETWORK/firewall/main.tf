/*resource "google_compute_firewall" "firewall" {
  name=var.fw_rule_name
  network=var.vpc
  allow {
    protocol=var.protocol
    ports=var.port
  }
  target_tags = var.tag
  source_ranges = var.source_ranges
}*/
resource "google_compute_firewall" "firewall" {
  for_each = var.fw_rules
  name=each.key
  network=var.vpc
  allow{
    protocol=each.value.protocol
    ports=each.value.ports
  }
  target_tags=each.value.target_tags
  source_ranges=each.value.source_ranges
}

