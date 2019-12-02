resource "docker_network" "public_bridge_network" {
  name = "public_ghost_network"
  driver = "overlay"
}

resource "docker_network" "private_bridge_network" {
  name = "ghost_mysql_network"
  driver = "overlay" # span network over multiple docker hosts
  internal = true
}
