# Resource Group létrehozása
resource "azurerm_resource_group" "rg" {
    name     = var.resource_group_name
    location = var.location
}

# Virtuális Hálózat (VNet) létrehozása
resource "azurerm_virtual_network" "vnet" {
    name                = "vnet-hub-core"
    address_space       = var.vnet_address_space
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
}