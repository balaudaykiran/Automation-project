resource "azurerm_virtual_network" "N01605345_vnet" {
  name                = var.N01605345_vnet
  location            = var.N01605345_Rg_location
  resource_group_name = var.N01605345_Rg_name
  address_space       = var.N01605345_vnet_aspace
  tags                = var.common_tags
}

resource "azurerm_subnet" "N01605345_subnet" {
  name                 = var.N01605345_subnet
  resource_group_name  = var.N01605345_Rg_name
  virtual_network_name = azurerm_virtual_network.N01605345_vnet.name
  address_prefixes     = var.N01605345_subnet_aspace
}

resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg
  location            = var.N01605345_Rg_location
  resource_group_name = var.N01605345_Rg_name

  security_rule {
    name                       = "rule1"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }


  security_rule {
    name                       = "rule2"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "rul3"
    priority                   = 300
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "5985"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }


  security_rule {
    name                       = "rule4"
    priority                   = 400
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  tags = var.common_tags
}

resource "azurerm_subnet_network_security_group_association" "nsg2asso" {
  subnet_id                 = azurerm_subnet.N01605345_subnet.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}
