module "naming" {
  source = "Azure/naming/azurerm"
  prefix = [var.prefix]
  suffix = [var.environment]
}

locals {
  virtual_network_name = module.naming.virtual_network.name
}