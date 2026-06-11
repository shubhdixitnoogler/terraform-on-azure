output "ids" {
  description = "Map of subnet IDs by key"
  value       = { for key, subnet in azurerm_subnet.subnet : key => subnet.id }
}

output "names" {
  description = "Map of subnet names by key"
  value       = { for key, subnet in azurerm_subnet.subnet : key => subnet.name }
}
