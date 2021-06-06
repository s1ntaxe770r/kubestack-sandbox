terraform {
  backend "azurerm" {
    storage_account_name = "aksdemostorage1"
    container_name       = "terraform-state-kubestack-7bfee04"
    key                  = "tfstate"
  }
}
