//https://www.terraform.io/docs/providers/azurerm/d/resource_group.html
resource "azurerm_resource_group" "this" {
  # lifecycle {
  #   prevent_destroy = true
  # }

  name     = var.resource_group_name
  location = var.location
  //subscription_id = "????"
  tags = var.tags
}