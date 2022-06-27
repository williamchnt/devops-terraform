data "azurerm_resource_group" "tp4"{
    name = "devops-TP2"
}

data "azurerm_subnet" "internal" {
  name                = "internal" 
  resource_group_name = data.azurerm_resource_group.tp4.name
  virtual_network_name = data.azurerm_virtual_network.example.name
}

data "azurerm_virtual_network" "example" {
  name                = "example-network"
  resource_group_name = data.azurerm_resource_group.tp4.name
}
