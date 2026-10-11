variable "app_engine_standard_app_versions" {
  description = <<EOT
Map of app_engine_standard_app_versions, attributes below
Required:
    - runtime
    - service
    - deployment (block):
        - files (optional, block):
            - name (required)
            - sha1_sum (optional)
            - source_url (required)
        - zip (optional, block):
            - files_count (optional)
            - source_url (required)
    - entrypoint (block):
        - shell (required)
Optional:
    - app_engine_apis
    - app_engine_bundled_services
    - delete_service_on_destroy
    - deletion_policy
    - env_variables
    - inbound_services
    - instance_class
    - noop_on_destroy
    - project
    - runtime_api_version
    - service_account
    - threadsafe
    - version_id
    - automatic_scaling (block):
        - max_concurrent_requests (optional)
        - max_idle_instances (optional)
        - max_pending_latency (optional)
        - min_idle_instances (optional)
        - min_pending_latency (optional)
        - standard_scheduler_settings (optional, block):
            - max_instances (optional)
            - min_instances (optional)
            - target_cpu_utilization (optional)
            - target_throughput_utilization (optional)
    - basic_scaling (block):
        - idle_timeout (optional)
        - max_instances (required)
    - handlers (block):
        - auth_fail_action (optional)
        - login (optional)
        - redirect_http_response_code (optional)
        - script (optional, block):
            - script_path (required)
        - security_level (optional)
        - static_files (optional, block):
            - application_readable (optional)
            - expiration (optional)
            - http_headers (optional)
            - mime_type (optional)
            - path (optional)
            - require_matching_file (optional)
            - upload_path_regex (optional)
        - url_regex (optional)
    - libraries (block):
        - name (optional)
        - version (optional)
    - manual_scaling (block):
        - instances (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - vpc_access_connector (block):
        - egress_setting (optional)
        - name (required)
EOT

  type = map(object({
    runtime                     = string
    service                     = string
    app_engine_apis             = optional(bool)
    app_engine_bundled_services = optional(set(string))
    delete_service_on_destroy   = optional(bool)
    deletion_policy             = optional(string)
    env_variables               = optional(map(string))
    inbound_services            = optional(set(string))
    instance_class              = optional(string)
    noop_on_destroy             = optional(bool)
    project                     = optional(string)
    runtime_api_version         = optional(string)
    service_account             = optional(string)
    threadsafe                  = optional(bool)
    version_id                  = optional(string)
    deployment = object({
      files = optional(list(object({
        name       = string
        sha1_sum   = optional(string)
        source_url = string
      })))
      zip = optional(object({
        files_count = optional(number)
        source_url  = string
      }))
    })
    entrypoint = object({
      shell = string
    })
    automatic_scaling = optional(object({
      max_concurrent_requests = optional(number)
      max_idle_instances      = optional(number)
      max_pending_latency     = optional(string)
      min_idle_instances      = optional(number)
      min_pending_latency     = optional(string)
      standard_scheduler_settings = optional(object({
        max_instances                 = optional(number)
        min_instances                 = optional(number)
        target_cpu_utilization        = optional(number)
        target_throughput_utilization = optional(number)
      }))
    }))
    basic_scaling = optional(object({
      idle_timeout  = optional(string)
      max_instances = number
    }))
    handlers = optional(list(object({
      auth_fail_action            = optional(string)
      login                       = optional(string)
      redirect_http_response_code = optional(string)
      script = optional(object({
        script_path = string
      }))
      security_level = optional(string)
      static_files = optional(object({
        application_readable  = optional(bool)
        expiration            = optional(string)
        http_headers          = optional(map(string))
        mime_type             = optional(string)
        path                  = optional(string)
        require_matching_file = optional(bool)
        upload_path_regex     = optional(string)
      }))
      url_regex = optional(string)
    })))
    libraries = optional(list(object({
      name    = optional(string)
      version = optional(string)
    })))
    manual_scaling = optional(object({
      instances = number
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    vpc_access_connector = optional(object({
      egress_setting = optional(string)
      name           = string
    }))
  }))
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

