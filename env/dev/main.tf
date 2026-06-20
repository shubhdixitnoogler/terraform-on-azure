module "resource_group" {
  source = "../../modules/resource_group"
  rg     = var.rg
}

module "storage_account" {
  source               = "../../modules/storage_account"
  st                   = var.st
  resource_group_names = module.resource_group.names
  depends_on           = [module.resource_group]
}

module "virtual_network" {
  source               = "../../modules/virtual_network"
  vnet                 = var.vnet
  resource_group_names = module.resource_group.names
}

module "subnet" {
  source                = "../../modules/subnet"
  subnet                = var.subnet
  resource_group_names  = module.resource_group.names
  virtual_network_names = module.virtual_network.names
}

module "network_security_group" {
  source               = "../../modules/network_security_group"
  nsg                  = var.nsg
  resource_group_names = module.resource_group.names
}

module "network_interface" {
  source               = "../../modules/network_interface"
  nic                  = var.nic
  resource_group_names = module.resource_group.names
  subnet_ids           = module.subnet.ids
}

module "virtual_machine" {
  source               = "../../modules/virtual_machine"
  vm                   = var.vm
  resource_group_names = module.resource_group.names
  nic_ids              = module.network_interface.ids
}