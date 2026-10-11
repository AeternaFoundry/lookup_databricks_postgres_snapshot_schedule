output "postgres_snapshot_schedule_lookup_name" {
  description = "Map of name values across all postgres_snapshot_schedule_lookup, keyed the same as var.postgres_snapshot_schedule_lookup except keys with no name are omitted"
  value       = { for k, v in data.databricks_postgres_snapshot_schedule.postgres_snapshot_schedule_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "postgres_snapshot_schedule_lookup_provider_config" {
  description = "Map of provider_config values across all postgres_snapshot_schedule_lookup, keyed the same as var.postgres_snapshot_schedule_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_postgres_snapshot_schedule.postgres_snapshot_schedule_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "postgres_snapshot_schedule_lookup_schedule" {
  description = "Map of schedule values across all postgres_snapshot_schedule_lookup, keyed the same as var.postgres_snapshot_schedule_lookup except keys with no schedule are omitted"
  value       = { for k, v in data.databricks_postgres_snapshot_schedule.postgres_snapshot_schedule_lookup : k => v.schedule if v.schedule != null && length(v.schedule) > 0 }
}

