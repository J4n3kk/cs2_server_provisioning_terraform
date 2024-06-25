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

resource "virtualbox_vm" "controlplane_node" {
  count  = var.controlplane_count
  name   = "controlplane-${count.index + 1}"
  image  = var.base_image
  cpus   = var.controlplane_cpus
  memory = var.controlplane_memory

  network_adapter {
    type           = "bridged"
    host_interface = "enp6s0"
  }
}

resource "virtualbox_vm" "worker_node" {
  count  = var.worker_vm_count
  name   = "workernode-${count.index + 1}"
  image  = var.base_image
  cpus   = var.worker_cpus
  memory = var.worker_memory

  network_adapter {
    type           = "bridged"
    host_interface = "enp6s0"
  }
}
