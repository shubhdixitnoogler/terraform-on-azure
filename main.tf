module "resource_group" {
  source = "./modules/resource_group"
  rg     = var.rg
}

module "storage_account" {
  source               = "./modules/storage_account"
  st                   = var.st
  resource_group_names = module.resource_group.names
}
