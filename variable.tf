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
