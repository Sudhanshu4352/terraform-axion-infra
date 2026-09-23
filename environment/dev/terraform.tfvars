rgs = {
  rg1 = {
    name     = "rg-axion-dev-01"
    location = "Central India"
  }
}

vnets = {
  vnet1 = {
    name                = "vnet-axion-dev-01"
    location            = "Central India"
    resource_group_name = "rg-axion-dev-01"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  frontend = {
    subnet_name          = "snet-axion-dev-01"
    resource_group_name  = "rg-axion-dev-01"
    virtual_network_name = "vnet-axion-dev-01"
    address_prefixes     = ["10.0.1.0/24"]
  }
  backend = {
    subnet_name          = "snet-axion-dev-02"
    resource_group_name  = "rg-axion-dev-01"
    virtual_network_name = "vnet-axion-dev-01"
    address_prefixes     = ["10.0.2.0/24"]
  }
  database = {
    subnet_name          = "snet-axion-dev-03"
    resource_group_name  = "rg-axion-dev-01"
    virtual_network_name = "vnet-axion-dev-01"
    address_prefixes     = ["10.0.3.0/24"]
  }
}

pips = {
  frontend = {
    name                = "pip-axion-dev-01"
    location            = "Central India"
    resource_group_name = "rg-axion-dev-01"
    allocation_method   = "Static"
  }
  backend = {
    name                = "pip-axion-dev-02"
    location            = "Central India"
    resource_group_name = "rg-axion-dev-01"
    allocation_method   = "Static"
  }
  database = {
    name                = "pip-axion-dev-03"
    location            = "Central India"
    resource_group_name = "rg-axion-dev-01"
    allocation_method   = "Static"
  }
}

nics = {
  frontend = {
    name                          = "nic-axion-dev-01"
    location                      = "Central India"
    resource_group_name           = "rg-axion-dev-01"
    ip_configuration_name         = "ipconfig1"
    subnet_name                   = "snet-axion-dev-01"
    public_ip_name                = "pip-axion-dev-01"
    virtual_network_name          = "vnet-axion-dev-01"
    private_ip_address_allocation = "Dynamic"

  }
  backend = {
    name                          = "nic-axion-dev-02"
    location                      = "Central India"
    resource_group_name           = "rg-axion-dev-01"
    ip_configuration_name         = "ipconfig1"
    subnet_name                   = "snet-axion-dev-02"
    public_ip_name                = "pip-axion-dev-02"
    virtual_network_name          = "vnet-axion-dev-01"
    private_ip_address_allocation = "Dynamic"

  }
  database = {
    name                          = "nic-axion-dev-03"
    location                      = "Central India"
    resource_group_name           = "rg-axion-dev-01"
    ip_configuration_name         = "ipconfig1"
    subnet_name                   = "snet-axion-dev-03"
    public_ip_name                = "pip-axion-dev-03"
    virtual_network_name          = "vnet-axion-dev-01"
    private_ip_address_allocation = "Dynamic"
  }
}

vms = {
  frontend = {
    name                = "vm-axion-dev-01"
    location            = "Central India"
    resource_group_name = "rg-axion-dev-01"
    nic_name            = "nic-axion-dev-01"
    vm_size             = "Standard_DC1ds_v3"
    image_publisher     = "Canonical"
    image_offer         = "0001-com-ubuntu-server-jammy"
    image_sku           = "22_04-lts-gen2"
    computer_name       = "vm-axion-dev-01"
    admin_username      = "azureuser"
    admin_password      = "YourPassword123!"
  }
  backend = {
    name                = "vm-axion-dev-02"
    location            = "Central India"
    resource_group_name = "rg-axion-dev-01"
    nic_name            = "nic-axion-dev-02"
    vm_size             = "Standard_DC1ds_v3"
    image_publisher     = "Canonical"
    image_offer         = "0001-com-ubuntu-server-jammy"
    image_sku           = "22_04-lts-gen2"
    computer_name       = "vm-axion-dev-02"
    admin_username      = "azureuser"
    admin_password      = "YourPassword123!"
  }
  database = {
    name                = "vm-axion-dev-03"
    location            = "Central India"
    resource_group_name = "rg-axion-dev-01"
    nic_name            = "nic-axion-dev-03"
    vm_size             = "Standard_DC1ds_v3"
    image_publisher     = "Canonical"
    image_offer         = "0001-com-ubuntu-server-jammy"
    image_sku           = "22_04-lts-gen2"
    computer_name       = "vm-axion-dev-03"
    admin_username      = "azureuser"
    admin_password      = "YourPassword123!"
  }
}

nsgs = {
  frontend = {
    name                = "nsg-axion-dev-01"
    location            = "Central India"
    resource_group_name = "rg-axion-dev-01"
    nic_name            = "nic-axion-dev-01"
  }

  backend = {
    name                = "nsg-axion-dev-02"
    location            = "Central India"
    resource_group_name = "rg-axion-dev-01"
    nic_name            = "nic-axion-dev-02"
  }

  database = {
    name                = "nsg-axion-dev-03"
    location            = "Central India"
    resource_group_name = "rg-axion-dev-01"
    nic_name            = "nic-axion-dev-03"
  }
}
