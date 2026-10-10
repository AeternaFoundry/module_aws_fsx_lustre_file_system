resource "aws_fsx_lustre_file_system" "fsx_lustre_file_systems" {
  for_each = var.fsx_lustre_file_systems

  subnet_ids                        = each.value.subnet_ids
  tags_all                          = each.value.tags_all
  tags                              = each.value.tags
  storage_type                      = each.value.storage_type
  storage_capacity                  = each.value.storage_capacity
  skip_final_backup                 = each.value.skip_final_backup
  security_group_ids                = each.value.security_group_ids
  region                            = each.value.region
  per_unit_storage_throughput       = each.value.per_unit_storage_throughput
  kms_key_id                        = each.value.kms_key_id
  imported_file_chunk_size          = each.value.imported_file_chunk_size
  import_path                       = each.value.import_path
  final_backup_tags                 = each.value.final_backup_tags
  file_system_type_version          = each.value.file_system_type_version
  export_path                       = each.value.export_path
  efa_enabled                       = each.value.efa_enabled
  drive_cache_type                  = each.value.drive_cache_type
  deployment_type                   = each.value.deployment_type
  data_compression_type             = each.value.data_compression_type
  daily_automatic_backup_start_time = each.value.daily_automatic_backup_start_time
  copy_tags_to_backups              = each.value.copy_tags_to_backups
  backup_id                         = each.value.backup_id
  automatic_backup_retention_days   = each.value.automatic_backup_retention_days
  auto_import_policy                = each.value.auto_import_policy
  throughput_capacity               = each.value.throughput_capacity
  weekly_maintenance_start_time     = each.value.weekly_maintenance_start_time

  dynamic "data_read_cache_configuration" {
    for_each = each.value.data_read_cache_configuration != null ? [each.value.data_read_cache_configuration] : []
    content {
      size        = data_read_cache_configuration.value.size
      sizing_mode = data_read_cache_configuration.value.sizing_mode
    }
  }

  dynamic "log_configuration" {
    for_each = each.value.log_configuration != null ? [each.value.log_configuration] : []
    content {
      destination = log_configuration.value.destination
      level       = log_configuration.value.level
    }
  }

  dynamic "metadata_configuration" {
    for_each = each.value.metadata_configuration != null ? [each.value.metadata_configuration] : []
    content {
      iops = metadata_configuration.value.iops
      mode = metadata_configuration.value.mode
    }
  }

  dynamic "root_squash_configuration" {
    for_each = each.value.root_squash_configuration != null ? [each.value.root_squash_configuration] : []
    content {
      no_squash_nids = root_squash_configuration.value.no_squash_nids
      root_squash    = root_squash_configuration.value.root_squash
    }
  }
}

