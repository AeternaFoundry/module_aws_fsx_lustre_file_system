output "fsx_lustre_file_systems_id" {
  description = "Map of id values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fsx_lustre_file_systems_arn" {
  description = "Map of arn values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "fsx_lustre_file_systems_auto_import_policy" {
  description = "Map of auto_import_policy values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.auto_import_policy if v.auto_import_policy != null && length(v.auto_import_policy) > 0 }
}
output "fsx_lustre_file_systems_automatic_backup_retention_days" {
  description = "Map of automatic_backup_retention_days values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.automatic_backup_retention_days if v.automatic_backup_retention_days != null }
}
output "fsx_lustre_file_systems_backup_id" {
  description = "Map of backup_id values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.backup_id if v.backup_id != null && length(v.backup_id) > 0 }
}
output "fsx_lustre_file_systems_copy_tags_to_backups" {
  description = "Map of copy_tags_to_backups values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.copy_tags_to_backups if v.copy_tags_to_backups != null }
}
output "fsx_lustre_file_systems_daily_automatic_backup_start_time" {
  description = "Map of daily_automatic_backup_start_time values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.daily_automatic_backup_start_time if v.daily_automatic_backup_start_time != null && length(v.daily_automatic_backup_start_time) > 0 }
}
output "fsx_lustre_file_systems_data_compression_type" {
  description = "Map of data_compression_type values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.data_compression_type if v.data_compression_type != null && length(v.data_compression_type) > 0 }
}
output "fsx_lustre_file_systems_data_read_cache_configuration" {
  description = "Map of data_read_cache_configuration values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => one(v.data_read_cache_configuration) if v.data_read_cache_configuration != null && length(v.data_read_cache_configuration) > 0 }
}
output "fsx_lustre_file_systems_deployment_type" {
  description = "Map of deployment_type values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.deployment_type if v.deployment_type != null && length(v.deployment_type) > 0 }
}
output "fsx_lustre_file_systems_dns_name" {
  description = "Map of dns_name values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.dns_name if v.dns_name != null && length(v.dns_name) > 0 }
}
output "fsx_lustre_file_systems_drive_cache_type" {
  description = "Map of drive_cache_type values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.drive_cache_type if v.drive_cache_type != null && length(v.drive_cache_type) > 0 }
}
output "fsx_lustre_file_systems_efa_enabled" {
  description = "Map of efa_enabled values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.efa_enabled if v.efa_enabled != null }
}
output "fsx_lustre_file_systems_export_path" {
  description = "Map of export_path values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.export_path if v.export_path != null && length(v.export_path) > 0 }
}
output "fsx_lustre_file_systems_file_system_type_version" {
  description = "Map of file_system_type_version values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.file_system_type_version if v.file_system_type_version != null && length(v.file_system_type_version) > 0 }
}
output "fsx_lustre_file_systems_final_backup_tags" {
  description = "Map of final_backup_tags values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.final_backup_tags if v.final_backup_tags != null && length(v.final_backup_tags) > 0 }
}
output "fsx_lustre_file_systems_import_path" {
  description = "Map of import_path values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.import_path if v.import_path != null && length(v.import_path) > 0 }
}
output "fsx_lustre_file_systems_imported_file_chunk_size" {
  description = "Map of imported_file_chunk_size values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.imported_file_chunk_size if v.imported_file_chunk_size != null }
}
output "fsx_lustre_file_systems_kms_key_id" {
  description = "Map of kms_key_id values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "fsx_lustre_file_systems_log_configuration" {
  description = "Map of log_configuration values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => one(v.log_configuration) if v.log_configuration != null && length(v.log_configuration) > 0 }
}
output "fsx_lustre_file_systems_metadata_configuration" {
  description = "Map of metadata_configuration values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => one(v.metadata_configuration) if v.metadata_configuration != null && length(v.metadata_configuration) > 0 }
}
output "fsx_lustre_file_systems_mount_name" {
  description = "Map of mount_name values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.mount_name if v.mount_name != null && length(v.mount_name) > 0 }
}
output "fsx_lustre_file_systems_network_interface_ids" {
  description = "Map of network_interface_ids values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.network_interface_ids if v.network_interface_ids != null && length(v.network_interface_ids) > 0 }
}
output "fsx_lustre_file_systems_owner_id" {
  description = "Map of owner_id values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.owner_id if v.owner_id != null && length(v.owner_id) > 0 }
}
output "fsx_lustre_file_systems_per_unit_storage_throughput" {
  description = "Map of per_unit_storage_throughput values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.per_unit_storage_throughput if v.per_unit_storage_throughput != null }
}
output "fsx_lustre_file_systems_region" {
  description = "Map of region values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.region if v.region != null && length(v.region) > 0 }
}
output "fsx_lustre_file_systems_root_squash_configuration" {
  description = "Map of root_squash_configuration values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => one(v.root_squash_configuration) if v.root_squash_configuration != null && length(v.root_squash_configuration) > 0 }
}
output "fsx_lustre_file_systems_security_group_ids" {
  description = "Map of security_group_ids values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.security_group_ids if v.security_group_ids != null && length(v.security_group_ids) > 0 }
}
output "fsx_lustre_file_systems_skip_final_backup" {
  description = "Map of skip_final_backup values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.skip_final_backup if v.skip_final_backup != null }
}
output "fsx_lustre_file_systems_storage_capacity" {
  description = "Map of storage_capacity values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.storage_capacity if v.storage_capacity != null }
}
output "fsx_lustre_file_systems_storage_type" {
  description = "Map of storage_type values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.storage_type if v.storage_type != null && length(v.storage_type) > 0 }
}
output "fsx_lustre_file_systems_subnet_ids" {
  description = "Map of subnet_ids values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.subnet_ids if v.subnet_ids != null && length(v.subnet_ids) > 0 }
}
output "fsx_lustre_file_systems_tags" {
  description = "Map of tags values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "fsx_lustre_file_systems_tags_all" {
  description = "Map of tags_all values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "fsx_lustre_file_systems_throughput_capacity" {
  description = "Map of throughput_capacity values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.throughput_capacity if v.throughput_capacity != null }
}
output "fsx_lustre_file_systems_vpc_id" {
  description = "Map of vpc_id values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.vpc_id if v.vpc_id != null && length(v.vpc_id) > 0 }
}
output "fsx_lustre_file_systems_weekly_maintenance_start_time" {
  description = "Map of weekly_maintenance_start_time values across all fsx_lustre_file_systems, keyed the same as var.fsx_lustre_file_systems"
  value       = { for k, v in aws_fsx_lustre_file_system.fsx_lustre_file_systems : k => v.weekly_maintenance_start_time if v.weekly_maintenance_start_time != null && length(v.weekly_maintenance_start_time) > 0 }
}

