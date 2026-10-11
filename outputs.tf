output "app_engine_standard_app_versions_id" {
  description = "Map of id values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no id are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_engine_standard_app_versions_app_engine_apis" {
  description = "Map of app_engine_apis values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no app_engine_apis are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.app_engine_apis if v.app_engine_apis != null }
}
output "app_engine_standard_app_versions_app_engine_bundled_services" {
  description = "Map of app_engine_bundled_services values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no app_engine_bundled_services are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.app_engine_bundled_services if v.app_engine_bundled_services != null && length(v.app_engine_bundled_services) > 0 }
}
output "app_engine_standard_app_versions_automatic_scaling" {
  description = "Map of automatic_scaling values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no automatic_scaling are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => one(v.automatic_scaling) if v.automatic_scaling != null && length(v.automatic_scaling) > 0 }
}
output "app_engine_standard_app_versions_basic_scaling" {
  description = "Map of basic_scaling values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no basic_scaling are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => one(v.basic_scaling) if v.basic_scaling != null && length(v.basic_scaling) > 0 }
}
output "app_engine_standard_app_versions_delete_service_on_destroy" {
  description = "Map of delete_service_on_destroy values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no delete_service_on_destroy are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.delete_service_on_destroy if v.delete_service_on_destroy != null }
}
output "app_engine_standard_app_versions_deletion_policy" {
  description = "Map of deletion_policy values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no deletion_policy are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "app_engine_standard_app_versions_deployment" {
  description = "Map of deployment values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no deployment are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => one(v.deployment) if v.deployment != null && length(v.deployment) > 0 }
}
output "app_engine_standard_app_versions_entrypoint" {
  description = "Map of entrypoint values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no entrypoint are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => one(v.entrypoint) if v.entrypoint != null && length(v.entrypoint) > 0 }
}
output "app_engine_standard_app_versions_env_variables" {
  description = "Map of env_variables values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no env_variables are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.env_variables if v.env_variables != null && length(v.env_variables) > 0 }
}
output "app_engine_standard_app_versions_handlers" {
  description = "Map of handlers values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no handlers are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.handlers if v.handlers != null && length(v.handlers) > 0 }
}
output "app_engine_standard_app_versions_inbound_services" {
  description = "Map of inbound_services values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no inbound_services are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.inbound_services if v.inbound_services != null && length(v.inbound_services) > 0 }
}
output "app_engine_standard_app_versions_instance_class" {
  description = "Map of instance_class values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no instance_class are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.instance_class if v.instance_class != null && length(v.instance_class) > 0 }
}
output "app_engine_standard_app_versions_libraries" {
  description = "Map of libraries values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no libraries are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.libraries if v.libraries != null && length(v.libraries) > 0 }
}
output "app_engine_standard_app_versions_manual_scaling" {
  description = "Map of manual_scaling values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no manual_scaling are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => one(v.manual_scaling) if v.manual_scaling != null && length(v.manual_scaling) > 0 }
}
output "app_engine_standard_app_versions_name" {
  description = "Map of name values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no name are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "app_engine_standard_app_versions_noop_on_destroy" {
  description = "Map of noop_on_destroy values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no noop_on_destroy are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.noop_on_destroy if v.noop_on_destroy != null }
}
output "app_engine_standard_app_versions_project" {
  description = "Map of project values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no project are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.project if v.project != null && length(v.project) > 0 }
}
output "app_engine_standard_app_versions_runtime" {
  description = "Map of runtime values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no runtime are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.runtime if v.runtime != null && length(v.runtime) > 0 }
}
output "app_engine_standard_app_versions_runtime_api_version" {
  description = "Map of runtime_api_version values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no runtime_api_version are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.runtime_api_version if v.runtime_api_version != null && length(v.runtime_api_version) > 0 }
}
output "app_engine_standard_app_versions_service" {
  description = "Map of service values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no service are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.service if v.service != null && length(v.service) > 0 }
}
output "app_engine_standard_app_versions_service_account" {
  description = "Map of service_account values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no service_account are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.service_account if v.service_account != null && length(v.service_account) > 0 }
}
output "app_engine_standard_app_versions_threadsafe" {
  description = "Map of threadsafe values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no threadsafe are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.threadsafe if v.threadsafe != null }
}
output "app_engine_standard_app_versions_version_id" {
  description = "Map of version_id values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no version_id are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => v.version_id if v.version_id != null && length(v.version_id) > 0 }
}
output "app_engine_standard_app_versions_vpc_access_connector" {
  description = "Map of vpc_access_connector values across all app_engine_standard_app_versions, keyed the same as var.app_engine_standard_app_versions except keys with no vpc_access_connector are omitted"
  value       = { for k, v in google_app_engine_standard_app_version.app_engine_standard_app_versions : k => one(v.vpc_access_connector) if v.vpc_access_connector != null && length(v.vpc_access_connector) > 0 }
}

