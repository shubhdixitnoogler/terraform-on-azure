variable "rg" {}
variable "st" {}

resource "azurerm_resource_group" "rgs"{
    for_each=var.rg
    name = each.value.name
    location = each.value.location
    managed_by = each.value.managed_by
}

resource "azurerm_storage_account" "stg" {
    for_each=var.st
    name = each.value.name
    resource_group_name = azurerm_resource_group.rgs[each.value.resource_group_name].name
    location = each.value.location
    account_tier = each.value.account_tier
    account_replication_type = each.value.account_replication_type
}