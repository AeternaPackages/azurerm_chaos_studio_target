# --- azurerm_chaos_studio_target ---
output "chaos_studio_targets_location" {
  description = "Map of location values across all chaos_studio_targets, keyed the same as var.chaos_studio_targets"
  value       = module.chaos_studio_targets.chaos_studio_targets_location
}

output "chaos_studio_targets_target_resource_id" {
  description = "Map of target_resource_id values across all chaos_studio_targets, keyed the same as var.chaos_studio_targets"
  value       = module.chaos_studio_targets.chaos_studio_targets_target_resource_id
}

output "chaos_studio_targets_target_type" {
  description = "Map of target_type values across all chaos_studio_targets, keyed the same as var.chaos_studio_targets"
  value       = module.chaos_studio_targets.chaos_studio_targets_target_type
}

# --- azurerm_chaos_studio_capability ---
output "chaos_studio_capabilities_capability_type" {
  description = "Map of capability_type values across all chaos_studio_capabilities, keyed the same as var.chaos_studio_capabilities"
  value       = module.chaos_studio_capabilities.chaos_studio_capabilities_capability_type
}

output "chaos_studio_capabilities_chaos_studio_target_id" {
  description = "Map of chaos_studio_target_id values across all chaos_studio_capabilities, keyed the same as var.chaos_studio_capabilities"
  value       = module.chaos_studio_capabilities.chaos_studio_capabilities_chaos_studio_target_id
}

output "chaos_studio_capabilities_urn" {
  description = "Map of urn values across all chaos_studio_capabilities, keyed the same as var.chaos_studio_capabilities"
  value       = module.chaos_studio_capabilities.chaos_studio_capabilities_urn
}


