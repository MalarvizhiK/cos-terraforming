variable "region" {
  default     = "us-south"
  description = "The VPC Region that you want your VPC, networks and the F5 virtual server to be provisioned in. To list available regions, run `ibmcloud is regions`."
}

variable "generation" {
  default     = 2
  description = "The VPC Generation to target. Valid values are 2 or 1."
}

variable "resource_group" {
  default     = "Default"
  description = "The resource group to use. If unspecified, the account's default resource group is used."
}

variable "cos_bucket" {
  description = "The COS bucket for state file"
}

variable "cos_state_file" {
  default     = "terraform.tfstate"
  description = "The terraform state file."
}

variable "cos_region" {
  default     = "us-south"
  description = "The COS region."
}

variable "cos_endpoint" {
  default     = "s3.us-south.cloud-object-storage.appdomain.cloud"
  description = "The COS endpoint."
}

variable "cos_access_key" {
  description = "The COS access key."
}

variable "cos_secret_key" {
  description = "The COS secret key"
}

