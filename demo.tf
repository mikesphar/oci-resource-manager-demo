variable "compartment_ocid" {
  default = "ocid1.compartment.oc1..aaaaaaaax4huh43m7va4t4lbcdmpmi22hjcdab3kbhj6vxjdeb55q4lqbklq"
}

variable "region" {
  default = "us-ashburn-1"
}

variable "bucket_namespace" {
  default = "idsdsqczf3yg"
}

variable "bucket_name" {
  default = "resource_manager_demo_bucket"
}

provider "oci" {
  region = var.region
}

resource "oci_objectstorage_bucket" "create_bucket" {
  compartment_id = var.compartment_ocid
  name = var.bucket_name
  namespace = var.bucket_namespace

  access_type = "NoPublicAccess"
}

output "new_bucket" {
  value = oci_objectstorage_bucket.create_bucket
}

