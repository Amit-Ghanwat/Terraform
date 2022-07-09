variable "rgname" {
  description = "Name of the RG"
  type        = string
  default     = "rg1"
}

variable "location" {
  description = "Name of the Location"
  type        = string
  default     = "eastus"
}

variable "vmnames" {
  description = "Name of the VMs"
  default     = ["vm1", "vm2"]
  type        = set(string)
}

/*
variable "vm2name" {
  description = "Name of the nic"
  type        = string
  default     = "vm2"
}

variable "privateipname" {
  description = "Name of the private ip"
  type        = string
  default     = "pip1"
}

variable "publicipname" {
  description = "Name of the private public ip"
  type        = string
  default     = "pubip1"
}
*/