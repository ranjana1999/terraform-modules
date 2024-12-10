output "vpc_self_link" {
  description= "selflinks of the created vpc"
  value=google_compute_network.vpc.self_link
}
output "vpc_name" {
  description= "selflinks of the created vpc"
  value=google_compute_network.vpc.name
}