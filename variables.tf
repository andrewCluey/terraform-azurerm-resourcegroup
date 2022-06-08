variable "tags" {
  description = "A map of tag values to add to the new Resource Group"
  type        = map(string)
  default     = {}
}

variable "location" {
  description = "The Azure region to deploy the new Resource Group"
  type        = string
  default     = "uksouth"
}

variable "rg_name" {
  description = "The name to assign to the new Resource Group"
  type        = string
}

