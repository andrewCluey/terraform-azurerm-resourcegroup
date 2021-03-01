variable "tags" {
  description = "A map of tag values to add to the new Resource Group"
  type        = map(string)
  default     = {environment = "DEV"}
}

variable "location" {
  description = "The Azure region to deploy the new Resource Group"
  type        = string
  default     = "UK South"
}

variable "rg_name" {
  description = "The name ot assign to the new Resource Group"
  type        = string
  default     = "RG-TEST"
}

