output "subnet_self_link" {
  description = "self link of subnet"
  value = google_compute_subnetwork.subnet.self_link
}
output "subnet_name"{
  description = "name of subnet created"
  value = google_compute_subnetwork.subnet.name
}