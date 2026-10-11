variable "postgres_snapshot_schedule_lookup" {
  description = <<EOT
Map of postgres_snapshot_schedule_lookup, attributes below
Required:
    - name
Optional:
    - provider_config
EOT

  type = map(object({
    name = string
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

