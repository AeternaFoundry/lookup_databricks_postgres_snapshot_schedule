data "databricks_postgres_snapshot_schedule" "postgres_snapshot_schedule_lookup" {
  for_each = var.postgres_snapshot_schedule_lookup

  name            = each.value.name
  provider_config = each.value.provider_config
}

