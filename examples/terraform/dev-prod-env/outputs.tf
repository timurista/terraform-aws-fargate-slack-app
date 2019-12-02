
# output the ip address
output "ip_address" {
  value = "${docker_container.container_id.ip_address}"
  description = "the ip for container"
}

# output the name
output "container_name" {
  value = "${docker_container.container_id.name}"
  description = "the name for container"
}


