variable "st" {
  type = map(object({
    name                     = string
    resource_group_key       = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "resource_group_names" {
  type = map(string)
}
