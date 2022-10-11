resource "openstack_compute_instance_v2" "sonarqube-instance" {
    name = "sonarqube-instance"
    image_name = var.os_image_name
    flavor_name = var.flavor_name_openstack
    key_pair = var.key_pair_name
    security_groups = var.security_groups_names
    
    network {
      name = var.network_name
    }
}

resource "openstack_compute_floatingip_associate_v2" "associate_floating_ip" {
  instance_id = "${openstack_compute_instance_v2.sonarqube-instance.id}"
  floating_ip    = var.sonar_ip
}
