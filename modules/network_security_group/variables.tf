variable "nsg" {
  type = map(object({
    name               = string
    resource_group_key = string
    location           = string
    security_rule = object({
      name                       = string
      priority                   = number
      direction                  = string
      access                     = string
      protocol                   = string
      source_port_range          = string
      destination_port_range     = string
      source_address_prefix      = string
      destination_address_prefix = string
    })
  }))
}

variable "resource_group_names" {
  type = map(string)
}
