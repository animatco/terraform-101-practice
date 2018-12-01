
# Download the latest Ghost Image
module "docker_image" {
  source = "./docker_image"
  image  = "${var.image}"
}

# Start the Container
module "docker_container" {
  source   = "./docker_container"
  image    = "${module.image.image_out}"
  name     = "${var.container_name}"
  int_port = "${var.int_port}"
  ext_port = "${var.ext_port}"
}
