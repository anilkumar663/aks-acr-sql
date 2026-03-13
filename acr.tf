resource "azurerm_container_registry" "anil-acr" {
    name                = "anilacr"
    location            = azurerm_resource_group.anil-rg.location
    resource_group_name = azurerm_resource_group.anil-rg.name
    sku = "Standard"
}
resource "azurerm_role_assignment" "acr-pull" {
    scope                = azurerm_container_registry.anil-acr.id
    role_definition_name = "AcrPull"
    principal_id         = azurerm_kubernetes_cluster.anil-aks.identity[0].principal_id
  
}