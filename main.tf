resource "google_app_engine_standard_app_version" "app_engine_standard_app_versions" {
  for_each = var.app_engine_standard_app_versions

  runtime                     = each.value.runtime
  service                     = each.value.service
  app_engine_apis             = each.value.app_engine_apis
  app_engine_bundled_services = each.value.app_engine_bundled_services
  delete_service_on_destroy   = each.value.delete_service_on_destroy
  deletion_policy             = each.value.deletion_policy
  env_variables               = each.value.env_variables
  inbound_services            = each.value.inbound_services
  instance_class              = each.value.instance_class
  noop_on_destroy             = each.value.noop_on_destroy
  project                     = each.value.project
  runtime_api_version         = each.value.runtime_api_version
  service_account             = each.value.service_account
  threadsafe                  = each.value.threadsafe
  version_id                  = each.value.version_id

  deployment {
    dynamic "files" {
      for_each = each.value.deployment.files != null ? each.value.deployment.files : []
      content {
        name       = files.value.name
        sha1_sum   = files.value.sha1_sum
        source_url = files.value.source_url
      }
    }
    dynamic "zip" {
      for_each = each.value.deployment.zip != null ? [each.value.deployment.zip] : []
      content {
        files_count = zip.value.files_count
        source_url  = zip.value.source_url
      }
    }
  }

  entrypoint {
    shell = each.value.entrypoint.shell
  }

  dynamic "automatic_scaling" {
    for_each = each.value.automatic_scaling != null ? [each.value.automatic_scaling] : []
    content {
      max_concurrent_requests = automatic_scaling.value.max_concurrent_requests
      max_idle_instances      = automatic_scaling.value.max_idle_instances
      max_pending_latency     = automatic_scaling.value.max_pending_latency
      min_idle_instances      = automatic_scaling.value.min_idle_instances
      min_pending_latency     = automatic_scaling.value.min_pending_latency
      dynamic "standard_scheduler_settings" {
        for_each = automatic_scaling.value.standard_scheduler_settings != null ? [automatic_scaling.value.standard_scheduler_settings] : []
        content {
          max_instances                 = standard_scheduler_settings.value.max_instances
          min_instances                 = standard_scheduler_settings.value.min_instances
          target_cpu_utilization        = standard_scheduler_settings.value.target_cpu_utilization
          target_throughput_utilization = standard_scheduler_settings.value.target_throughput_utilization
        }
      }
    }
  }

  dynamic "basic_scaling" {
    for_each = each.value.basic_scaling != null ? [each.value.basic_scaling] : []
    content {
      idle_timeout  = basic_scaling.value.idle_timeout
      max_instances = basic_scaling.value.max_instances
    }
  }

  dynamic "handlers" {
    for_each = each.value.handlers != null ? each.value.handlers : []
    content {
      auth_fail_action            = handlers.value.auth_fail_action
      login                       = handlers.value.login
      redirect_http_response_code = handlers.value.redirect_http_response_code
      dynamic "script" {
        for_each = handlers.value.script != null ? [handlers.value.script] : []
        content {
          script_path = script.value.script_path
        }
      }
      security_level = handlers.value.security_level
      dynamic "static_files" {
        for_each = handlers.value.static_files != null ? [handlers.value.static_files] : []
        content {
          application_readable  = static_files.value.application_readable
          expiration            = static_files.value.expiration
          http_headers          = static_files.value.http_headers
          mime_type             = static_files.value.mime_type
          path                  = static_files.value.path
          require_matching_file = static_files.value.require_matching_file
          upload_path_regex     = static_files.value.upload_path_regex
        }
      }
      url_regex = handlers.value.url_regex
    }
  }

  dynamic "libraries" {
    for_each = each.value.libraries != null ? each.value.libraries : []
    content {
      name    = libraries.value.name
      version = libraries.value.version
    }
  }

  dynamic "manual_scaling" {
    for_each = each.value.manual_scaling != null ? [each.value.manual_scaling] : []
    content {
      instances = manual_scaling.value.instances
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "vpc_access_connector" {
    for_each = each.value.vpc_access_connector != null ? [each.value.vpc_access_connector] : []
    content {
      egress_setting = vpc_access_connector.value.egress_setting
      name           = vpc_access_connector.value.name
    }
  }
}

