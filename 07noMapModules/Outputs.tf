#Output the IP Address of the Container
output "IP Address" {
  value = "${module.docker_container.ip}"
}

output "Container Name" {
  value = "${module.docker_container.container_name}"
}