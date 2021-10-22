resource "azurerm_resource_group" "resource_group" {
  name     = "${var.instance}-${var.project}"
  location = var.location
}

resource "azurerm_storage_account" "storage_account" {
  name                = "${var.instance}${var.project}store"
  resource_group_name = azurerm_resource_group.resource_group.name

  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"

  static_website {
    index_document = "index.html"
  }
}

resource "azurerm_storage_blob" "index" {
  name                   = "index.html"
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source                 = "../dist/index.html"
}

resource "azurerm_storage_blob" "bundle" {
  name                   = "bundle.js"
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source                 = "../dist/bundle.js"
}