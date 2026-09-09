output "container_id" {
  description = "ID of the managed Docker container"
  value       = docker_container.web.id
}

output "container_ip" {
  description = "IP address of the managed Docker container"
  value       = docker_container.web.network_data[0].ip_address
}

output "external_port" {
  description = "Host port exposed for the managed container"
  value       = var.external_port
}
