

module "resource_group" {

  source = "../../modules/azurerm_resource_group"
  rg     = var.m_rg

}

module "storage_account" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_storage_account"
  storage    = var.m_stg


}