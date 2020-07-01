##############################################################################
# Read/validate Region
##############################################################################
data "ibm_is_region" "region" {
  name = var.region
}


terraform {
  backend "s3" {
    bucket                      = var.cos_bucket
    key                         = var.cos_state_file
    region                      = var.cos_region
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_get_ec2_platforms      = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
    endpoint                    = var.cos_endpoint
    access_key                  = var.cos_access_key
    secret_key                  = var.cos_secret_key
  }
}

data "ibm_resource_group" "rg" {
  name = var.resource_group
}

resource "ibm_is_vpc" "test-vpc" {
  name = var.vpc_name
  resource_group = data.ibm_resource_group.rg.id
}


