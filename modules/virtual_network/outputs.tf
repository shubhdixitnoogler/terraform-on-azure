output "ids" {
  description = "Map of virtual network IDs by key"
  value       = { for key, vnet in azurerm_virtual_network.vnet : key => vnet.id }
}

output "names" {
  description = "Map of virtual network names by key"
  value       = { for key, vnet in azurerm_virtual_network.vnet : key => vnet.name }
}
