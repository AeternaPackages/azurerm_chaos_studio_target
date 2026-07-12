locals {
  chaos_studio_targets = { for k1, v1 in var.chaos_studio_targets : k1 => { location = v1.location, target_resource_id = v1.target_resource_id, target_type = v1.target_type } }

  chaos_studio_capabilities = merge([
    for k1, v1 in var.chaos_studio_targets : {
      for k2, v2 in coalesce(v1.chaos_studio_capabilities, {}) :
      "${k1}/${k2}" => merge(v2, {
        chaos_studio_target_id = module.chaos_studio_targets.chaos_studio_targets_id["${k1}"]
      })
    }
  ]...)
}

module "chaos_studio_targets" {
  source               = "git::https://github.com/AeternaModules/azurerm_chaos_studio_target.git?ref=v4.80.0"
  chaos_studio_targets = local.chaos_studio_targets
}

module "chaos_studio_capabilities" {
  source                    = "git::https://github.com/AeternaModules/azurerm_chaos_studio_capability.git?ref=v4.80.0"
  chaos_studio_capabilities = local.chaos_studio_capabilities
  depends_on                = [module.chaos_studio_targets]
}

