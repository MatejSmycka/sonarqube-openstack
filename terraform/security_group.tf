resource "openstack_networking_secgroup_v2" "sonarqube-sec-group" {
  name        = "sonarqube-sec-group"
  description = "SonarQube security group"
}

resource "openstack_networking_secgroup_rule_v2" "sonar-sec-ssh" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = var.vpn-zam
  security_group_id = "${openstack_networking_secgroup_v2.sonarqube-sec-group.id}"
}

resource "openstack_networking_secgroup_rule_v2" "www-port" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 443
  port_range_max    = 443
  remote_ip_prefix  = var.vpn-zam
  security_group_id = "${openstack_networking_secgroup_v2.sonarqube-sec-group.id}"
}

resource "openstack_networking_secgroup_rule_v2" "sonar-sec-ping" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  remote_ip_prefix  = var.vpn-zam
  security_group_id = "${openstack_networking_secgroup_v2.sonarqube-sec-group.id}"
}

