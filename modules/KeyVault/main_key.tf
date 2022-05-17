data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "key_vault" {
  name                        = var.key_vault_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name = "standard"

     access_policy {
    
    tenant_id     = data.azurerm_client_config.current.tenant_id
    object_id     = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Create","Delete","Get","List","Purge","Update","Restore",
    ]

    secret_permissions = [
      "Set","Get","Delete","Purge","Restore","List",
    ]
  }

  access_policy {
    
    tenant_id     = data.azurerm_client_config.current.tenant_id
    object_id     = "997614ee-8c79-4648-99f0-40aefc81974b"
    key_permissions = [
      "Get","List",
    ]

    secret_permissions = [
     "Get", "List",
    ]
  }
}

