variable "chaos_studio_targets" {
  description = <<EOT
Map of chaos_studio_targets, attributes below
Required:
    - location
    - target_resource_id
    - target_type
Nested chaos_studio_capabilities (azurerm_chaos_studio_capability):
    Required:
        - capability_type
EOT

  type = map(object({
    location           = string
    target_resource_id = string
    target_type        = string
    chaos_studio_capabilities = optional(map(object({
      capability_type = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.chaos_studio_targets) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.chaos_studio_targets : [for kk in keys(coalesce(v0.chaos_studio_capabilities, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
