terraform {
  required_providers {
   openstack = {
      source  = "terraform-provider-openstack/openstack"
      }
  }
}

provider "openstack" { 
  cloud = "openstack" #this refers to clouds.yaml file where are stored openstack access credentials
}
