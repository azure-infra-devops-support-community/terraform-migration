# Reference an existing resource group
data "azurerm_resource_group" "aks-rg" {
  name = var.resource_group_name
}

# resource "azurerm_resource_group" "aks-rg" {
#   name     = var.resource_group_name
#   location = var.location
# }

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  kubernetes_version  = var.kubernetes_version
  location            = data.azurerm_resource_group.aks-rg.location  
  resource_group_name = data.azurerm_resource_group.aks-rg.name  
  dns_prefix          = var.cluster_name

  default_node_pool {
    name                = "system"
    node_count          = var.system_node_count
    vm_size             = "Standard_A2_v2"
    #type                = "VirtualMachineScaleSets"
    #availability_zones  = [1, 2]
    #enable_auto_scaling = false
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    load_balancer_sku = "Standard"
    network_plugin    = "kubenet"
  }
}




