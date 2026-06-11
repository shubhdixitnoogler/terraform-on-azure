variable "rg" {
  type = map(object({
    name       = string
    location   = string
    managed_by = string
  }))
}

variable "st" {
  type = map(object({
    name                     = string
    resource_group_key       = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "vnet" {
  type = map(object({
    name               = string
    resource_group_key = string
    location           = string
    address_space      = list(string)
  }))
}

variable "subnet" {
  type = map(object({
    name                = string
    resource_group_key  = string
    virtual_network_key = string
    address_prefixes    = list(string)
  }))
}

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

variable "vm" {
  type = map(object({
    name               = string
    resource_group_key = string
    location           = string
    size               = string
    admin_username     = string
    admin_password     = string
    nic_key            = string
    os_disk = object({
      caching              = string
      storage_account_type = string
    })
    source_image_reference = object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    })
  }))
}
