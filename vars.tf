variable "base_image" {
  type        = string
  default     = "https://app.vagrantup.com/generic/boxes/ubuntu2004/versions/4.3.12/providers/virtualbox/amd64/vagrant.box"
  description = "base image to spin up nodes"
}

variable "controlplane_cpus" {
  default = 2
}

variable "controlplane_memory" {
  default = "5 GB"
}

variable "controlplane_count" {
  default = 1
}

variable "controlplane_vm_count" {
  type    = number
  default = 1
}

variable "worker_vm_count" {
  type    = number
  default = 1
}

variable "worker_cpus" {
  type    = number
  default = 2
}

variable "worker_memory" {
  default = "4 GB"
}
