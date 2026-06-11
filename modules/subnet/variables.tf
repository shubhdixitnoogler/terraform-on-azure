variable "subnet" {
  type = map(object({
    name                  = string
    resource_group_key    = string
    virtual_network_key   = string
    address_prefixes      = list(string)
  }))
}

variable "resource_group_names" {
  type = map(string)
}

variable "virtual_network_names" {
  type = map(string)
}
