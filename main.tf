terraform {
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "aci_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_group" "containergroup" {
  name                = var.container_group_name
  resource_group_name = azurerm_resource_group.aci_rg.name
  location            = azurerm_resource_group.aci_rg.location
  ip_address_type     = "Public"
  dns_name_label      = var.dns_name_label
  os_type             = "Linux"

  container {
    name  = var.container_name
    image = var.image_name
    cpu   = var.cpu_core_number
    memory = var.memory_size

    ports {
      protocol = "TCP"
      port     = var.port_number
    }
  }
  image_registry_credential {
    server = var.image_registry_server
    username = var.image_registry_username
    password = var.image_registry_password
    }
}

