variable "vpn-zam" {
  description = "ics network"
  type        = string
  default     = "147.251.55.129/25"
}

variable "sonar_ip" {
  description = "floating ip to be associated with sonar instance"
  type        = string
  default     = "147.251.125.23"
}

variable "network_name" {
  description = "network"
  type        = string
  default     = "public-router-net"
}

variable "os_image_name" {
  description = "OS version used by instance"
  type        = string
  default     = "ubuntu-bionic-x86_64"
}

variable "flavor_name_openstack" {
  description = "Instance hardware"
  type        = string
  default     = "csirtmu.large8x32" 
}

variable "security_groups_names" {
  description = "access list name"
  type        = list(string)
  default     = ["sonarqube-sec-group"]
}

variable "key_pair_name" {
  description = "ssh key-pair from openstack"
  type        = string
}
