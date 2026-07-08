# --- azurerm_chaos_studio_target ---
output "chaos_studio_targets" {
  description = "All chaos_studio_target resources"
  value       = module.chaos_studio_targets.chaos_studio_targets
}
output "chaos_studio_targets_location" {
  description = "List of location values across all chaos_studio_targets"
  value       = [for k, v in module.chaos_studio_targets.chaos_studio_targets : v.location]
}
output "chaos_studio_targets_target_resource_id" {
  description = "List of target_resource_id values across all chaos_studio_targets"
  value       = [for k, v in module.chaos_studio_targets.chaos_studio_targets : v.target_resource_id]
}
output "chaos_studio_targets_target_type" {
  description = "List of target_type values across all chaos_studio_targets"
  value       = [for k, v in module.chaos_studio_targets.chaos_studio_targets : v.target_type]
}


# --- azurerm_chaos_studio_capability ---
output "chaos_studio_capabilities" {
  description = "All chaos_studio_capability resources"
  value       = module.chaos_studio_capabilities.chaos_studio_capabilities
}
output "chaos_studio_capabilities_capability_type" {
  description = "List of capability_type values across all chaos_studio_capabilities"
  value       = [for k, v in module.chaos_studio_capabilities.chaos_studio_capabilities : v.capability_type]
}
output "chaos_studio_capabilities_chaos_studio_target_id" {
  description = "List of chaos_studio_target_id values across all chaos_studio_capabilities"
  value       = [for k, v in module.chaos_studio_capabilities.chaos_studio_capabilities : v.chaos_studio_target_id]
}
output "chaos_studio_capabilities_urn" {
  description = "List of urn values across all chaos_studio_capabilities"
  value       = [for k, v in module.chaos_studio_capabilities.chaos_studio_capabilities : v.urn]
}



