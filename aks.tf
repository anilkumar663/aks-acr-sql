resource "azurerm_kubernetes_cluster" "anil-aks" {
    name                = "anil-aks"
    location            = azurerm_resource_group.anil-rg.location
    resource_group_name = azurerm_resource_group.anil-rg.name
    dns_prefix         = "anilaks"
    
    default_node_pool {
        name       = "default"
        node_count = 1
        vm_size    = "Standard_DS2_v2"
    }
    
    identity {
        type = "SystemAssigned"
    }
  
}