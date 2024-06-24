terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

provider "virtualbox" {

}

resource "virtualbox_vm" "controlplane" {
  count  = 1
  name   = "controlplane"
  image  = var.base_image
  cpus   = var.controlplane_cpus
  memory = var.controlplane_memory

  network_adapter {
    type           = "bridged"
    host_interface = "enp6s0"
  }
}
