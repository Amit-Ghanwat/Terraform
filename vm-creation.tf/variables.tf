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

variable "vmname" {
  description = "Name of the VM"
  type        = string
  default     = "vm1"
}


variable "nicname" {
  description = "Name of the nic"
  type        = string
  default     = "nic1"
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
