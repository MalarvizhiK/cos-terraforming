# Provider block - Alias initialized to interact with VNF VPC Experiments account
##############################################################################
provider "ibm" {
  ibmcloud_api_key      = "eeZfQFlBE6QAlDDph-SoJwbXXLg-AaRPt-LCKkHr-cHR"
  # ibmcloud_api_key = "1hm5zMGeGd1OA9fsd8-QC8quN9iRGlcdrtLcwzioCO-a"
  # ibmcloud_api_key      = "eTUsaA0nN3IX5IoFPLkHiDvRjR68lsoj1-edNEJgnHit"
  # ibmcloud_api_key = "pwWSM4gJsyL5M4T3fR2mrKSD3vjnsV0342f9wEW7F1Dl"
  # ibmcloud_timeout      = 300
  generation            = var.generation
  region                = var.region
}

