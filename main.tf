terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.48.0"
    }
  }
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_location
}

resource "azurerm_kubernetes_cluster" "cluster" {
  name       = var.cluster_name
  location   = var.rg_location
  resource_group_name = var.rg_name
  dns_prefix = var.cluster_name

  default_node_pool {
    name       = "default"
    node_count = var.nodes
    vm_size    = var.vmSize
  }
  identity {
    type = "SystemAssigned"
  }
}
