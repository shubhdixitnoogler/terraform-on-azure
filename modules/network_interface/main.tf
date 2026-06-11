resource "azurerm_network_interface" "nic" {
  for_each = var.nic

  name                = each.value.name
  location            = each.value.location
  resource_group_name = var.resource_group_names[each.value.resource_group_key]

  ip_configuration {
    name                          = each.value.ip_configuration.name
    subnet_id                     = var.subnet_ids[each.value.ip_configuration.subnet_key]
    private_ip_address_allocation = each.value.ip_configuration.private_ip_address_allocation
  }
}
