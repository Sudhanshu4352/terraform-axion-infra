module "rg" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_virtual_network"
  vnets      = var.vnets
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../../modules/azurerm_subnet"
  subnets    = var.subnets
}

module "pip" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_public_ips"
  pips       = var.pips
}

module "nic" {
  depends_on = [module.subnet, module.pip]
  source     = "../../modules/azurerm_network_interface_card"
  nics       = var.nics

}

module "vm" {
  depends_on = [module.nic]
  source     = "../../modules/azurerm_virtual_machine"
  vms        = var.vms
}

module "nsg" {
  depends_on = [module.nic]
  source     = "../../modules/azurerm_network_security_group"
  nsgs       = var.nsgs
}
