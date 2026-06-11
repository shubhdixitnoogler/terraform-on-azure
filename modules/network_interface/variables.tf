variable "nic" {
  type = map(object({
    name               = string
    resource_group_key = string
    location           = string
    ip_configuration = object({
      name                          = string
      subnet_key                    = string
      private_ip_address_allocation = string
    })
  }))
}

variable "resource_group_names" {
  type = map(string)
}

variable "subnet_ids" {
  type = map(string)
}