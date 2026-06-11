variable "vnet" {
  type = map(object({
    name                = string
    resource_group_key  = string
    location            = string
    address_space       = list(string)
  }))
}

variable "resource_group_names" {
  type = map(string)
}
