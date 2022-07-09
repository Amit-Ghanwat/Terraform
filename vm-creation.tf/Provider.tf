#Deployment using Backend tfstate, Datablocks & Variables

terraform {
  backend "azurerm" {
    storage_account_name = "new231614"
    container_name       = "container1"
    key                  = "remote.tfstate"
    access_key           = "dloA9ymj/a3O0LLNFKVl+UMIc8Gwx48rZ93mW1LcB32FIfw/l2CMaMseZR4UieK8VCfzr/cmAmAi+ASt1fe8Vw=="
  }
}
# Configure the Microsoft Azure Provider

provider "azurerm" {
  #subscription_id = "11aa1ce5-1c73-4fe3-a59e-ff59b624da0b"
  #client_id = "7369e031-23f3-4883-aac0-bd82068cc769"
  #client_secret = "F-D8Q~qqV8CZ9jUJE01vNn1DDUIDj.mNxyOxcdc1"
  #tenant_id = "7292f53b-abd3-4e30-a361-f35cf4e27b4e"
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}


/*
How to destroy one specific resource from TF file in Terraform?

RAJESH KUMAR AUGUST 11, 2019 COMMENTS OFF
Spread the Knowledge
Terraform destroy is a command that allows you to destroy either a full stack (based on your TF files), or single resources, using the -target option. You can even do:

$ terraform state list
$ terraform destroy -target RESOURCE_TYPE.NAME
$ terraform destroy -target RESOURCE_TYPE.NAME -target RESOURCE_TYPE2.NAME
$ terraform state list
Option of skipping a resource while destroying terraform resources?

$ terraform state list
$ terraform destroy -target=RESOURCE_TYPE.NAME -target=RESOURCE_TYPE2.NAME
$ terraform state list
How to remove single resources, single instances of a resource, entire modules, and more items from the Terraform state?

# Remove a Resource
$ terraform state rm module.foo.packet_device.worker[0]

# Remove a Module
$ terraform state rm module.foo
How to delete all resources except one?

# list all resources
terraform state list

# remove that resource you don't want to destroy
# you can add more to be excluded if required
terraform state rm <resource_to_be_deleted> 

# destroy the whole stack except above resource(s)
terraform destroy 
*/