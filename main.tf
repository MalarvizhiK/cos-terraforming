##############################################################################
# Read/validate Region
##############################################################################
data "ibm_is_region" "region" {
  name = var.region
}

data "ibm_resource_group" "rg" {
  name = var.resource_group
}

resource "ibm_is_vpc" "test-vpc" {
  name = var.vpc_name
  resource_group = data.ibm_resource_group.rg.id
}

