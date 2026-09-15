---
title: Terraform Module for Azure Resource Group
description: Provision an Azure Resource Group with a configurable location and tags
---

Provisions an [Azure Resource Group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group).

## Usage

```hcl
module "rg" {
  source              = "git::https://github.com/f2calv/tf_module_azurerm_resource_group.git//src?ref=v0.2.0"
  resource_group_name = "my-resource-group"
  location            = "West Europe"
  tags                = { environment = "dev" }
}
```

## Variables

| Name | Type | Default | Description |
| --- | --- | --- | --- |
| `resource_group_name` | `string` | Required | Name of the resource group |
| `location` | `string` | `West Europe` | Location of the resource group |
| `tags` | `map(string)` | `{}` | Any tags that should be present on the resources |

## Outputs

| Name | Description |
| --- | --- |
| `id` | The ID of the resource group |
| `name` | The name of the resource group |
| `location` | The location of the resource group |
