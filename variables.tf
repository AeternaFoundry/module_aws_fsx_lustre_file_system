variable "fsx_lustre_file_systems" {
  description = <<EOT
Map of fsx_lustre_file_systems, attributes below
Required:
    - subnet_ids
Optional:
    - auto_import_policy
    - automatic_backup_retention_days
    - backup_id
    - copy_tags_to_backups
    - daily_automatic_backup_start_time
    - data_compression_type
    - deployment_type
    - drive_cache_type
    - efa_enabled
    - export_path
    - file_system_type_version
    - final_backup_tags
    - import_path
    - imported_file_chunk_size
    - kms_key_id
    - per_unit_storage_throughput
    - region
    - security_group_ids
    - skip_final_backup
    - storage_capacity
    - storage_type
    - tags
    - tags_all
    - throughput_capacity
    - weekly_maintenance_start_time
    - data_read_cache_configuration (block):
        - size (optional)
        - sizing_mode (required)
    - log_configuration (block):
        - destination (optional)
        - level (optional)
    - metadata_configuration (block):
        - iops (optional)
        - mode (optional)
    - root_squash_configuration (block):
        - no_squash_nids (optional)
        - root_squash (optional)
EOT

  type = map(object({
    subnet_ids                        = list(string)
    tags_all                          = optional(map(string))
    tags                              = optional(map(string))
    storage_type                      = optional(string)
    storage_capacity                  = optional(number)
    skip_final_backup                 = optional(bool)
    security_group_ids                = optional(set(string))
    region                            = optional(string)
    per_unit_storage_throughput       = optional(number)
    kms_key_id                        = optional(string)
    imported_file_chunk_size          = optional(number)
    import_path                       = optional(string)
    final_backup_tags                 = optional(map(string))
    file_system_type_version          = optional(string)
    export_path                       = optional(string)
    efa_enabled                       = optional(bool)
    drive_cache_type                  = optional(string)
    deployment_type                   = optional(string)
    data_compression_type             = optional(string)
    daily_automatic_backup_start_time = optional(string)
    copy_tags_to_backups              = optional(bool)
    backup_id                         = optional(string)
    automatic_backup_retention_days   = optional(number)
    auto_import_policy                = optional(string)
    throughput_capacity               = optional(number)
    weekly_maintenance_start_time     = optional(string)
    data_read_cache_configuration = optional(object({
      size        = optional(number)
      sizing_mode = string
    }))
    log_configuration = optional(object({
      destination = optional(string)
      level       = optional(string)
    }))
    metadata_configuration = optional(object({
      iops = optional(number)
      mode = optional(string)
    }))
    root_squash_configuration = optional(object({
      no_squash_nids = optional(set(string))
      root_squash    = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.fsx_lustre_file_systems : (
        v.automatic_backup_retention_days == null || (v.automatic_backup_retention_days >= 0 && v.automatic_backup_retention_days <= 90)
      )
    ])
    error_message = "must be between 0 and 90"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_lustre_file_systems : (
        v.daily_automatic_backup_start_time == null || ((length(v.daily_automatic_backup_start_time) >= 5 && length(v.daily_automatic_backup_start_time) <= 5) && (can(regex("^([01]\\d|2[0-3]):?([0-5]\\d)$", v.daily_automatic_backup_start_time))))
      )
    ])
    error_message = "all of: must be between 5 and 5 characters; must be in the format HH:MM"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_lustre_file_systems : (
        v.export_path == null || ((length(v.export_path) >= 3 && length(v.export_path) <= 900) && (can(regex("^s3://", v.export_path))))
      )
    ])
    error_message = "all of: must be between 3 and 900 characters; must begin with s3://"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_lustre_file_systems : (
        v.file_system_type_version == null || ((length(v.file_system_type_version) >= 1 && length(v.file_system_type_version) <= 20) && (can(regex("^[0-9].[0-9]+$", v.file_system_type_version))))
      )
    ])
    error_message = "all of: must be between 1 and 20 characters; must be in format x.y"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_lustre_file_systems : (
        v.import_path == null || ((length(v.import_path) >= 3 && length(v.import_path) <= 900) && (can(regex("^s3://", v.import_path))))
      )
    ])
    error_message = "all of: must be between 3 and 900 characters; must begin with s3://"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_lustre_file_systems : (
        v.imported_file_chunk_size == null || (v.imported_file_chunk_size >= 1 && v.imported_file_chunk_size <= 512000)
      )
    ])
    error_message = "must be between 1 and 512000"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_lustre_file_systems : (
        v.per_unit_storage_throughput == null || (contains([12, 40, 50, 100, 125, 200, 250, 500, 1000], v.per_unit_storage_throughput))
      )
    ])
    error_message = "must be one of: 12, 40, 50, 100, 125, 200, 250, 500, 1000"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_lustre_file_systems : (
        v.root_squash_configuration == null || (v.root_squash_configuration.no_squash_nids == null || (alltrue([for x in v.root_squash_configuration.no_squash_nids : can(regex("^([0-9\\[\\]\\-]*\\.){3}([0-9\\[\\]\\-]*)@tcp$", x))])))
      )
    ])
    error_message = "must be in the standard Lustre NID foramt"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_lustre_file_systems : (
        v.root_squash_configuration == null || (v.root_squash_configuration.root_squash == null || (can(regex("^([0-9]{1,10}):([0-9]{1,10})$", v.root_squash_configuration.root_squash))))
      )
    ])
    error_message = "must be in the format UID:GID"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_lustre_file_systems : (
        v.storage_capacity == null || (v.storage_capacity >= 1200)
      )
    ])
    error_message = "must be at least 1200"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_lustre_file_systems : (
        v.weekly_maintenance_start_time == null || ((length(v.weekly_maintenance_start_time) >= 7 && length(v.weekly_maintenance_start_time) <= 7) && (can(regex("^[1-7]:([01]\\d|2[0-3]):?([0-5]\\d)$", v.weekly_maintenance_start_time))))
      )
    ])
    error_message = "all of: must be between 7 and 7 characters; must be in the format d:HH:MM"
  }
  # Note: 12 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

