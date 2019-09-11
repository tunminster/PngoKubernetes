resource "azurerm_resource_group" "dixi-aks-rg" {
  name              = "${var.resource_group_name}"
  location          = "${var.location}"
  tags              = "${var.tags}"    
}

module "dixi-aks-module" {
  source              = "./Modules/AKS"

  aks_name            = "${var.aks_name}"  
  aks_app_id          = "${var.aks_app_id}"
  aks_app_secret      = "${var.aks_app_secret}"
  location            = "${azurerm_resource_group.dixi-aks-rg.location}"
  resource_group_name = "${azurerm_resource_group.dixi-aks-rg.name}"
  tags                = "${var.tags}"
}