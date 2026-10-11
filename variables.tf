variable "dataflow_sql_endpoints" {
  description = <<EOT
Map of dataflow_sql_endpoints, attributes below
Required:
    - compartment_id
    - display_name
    - driver_shape
    - executor_shape
    - max_executor_count
    - metastore_id
    - min_executor_count
    - sql_endpoint_version
    - network_configuration (block):
        - access_control_rules (optional, block):
            - ip_notation (optional)
            - value (optional)
            - vcn_ips (optional)
        - host_name_prefix (optional)
        - network_type (required)
        - nsg_ids (optional)
        - subnet_id (optional)
        - vcn_id (optional)
Optional:
    - defined_tags
    - description
    - freeform_tags
    - log_compartment_id
    - log_display_name
    - log_group_id
    - log_retention_duration
    - spark_advanced_configurations
    - state
    - driver_shape_config (block):
        - memory_in_gbs (optional)
        - ocpus (optional)
    - executor_shape_config (block):
        - memory_in_gbs (optional)
        - ocpus (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                = string
    display_name                  = string
    driver_shape                  = string
    executor_shape                = string
    max_executor_count            = number
    metastore_id                  = string
    min_executor_count            = number
    sql_endpoint_version          = string
    defined_tags                  = optional(map(string))
    description                   = optional(string)
    freeform_tags                 = optional(map(string))
    log_compartment_id            = optional(string)
    log_display_name              = optional(string)
    log_group_id                  = optional(string)
    log_retention_duration        = optional(number)
    spark_advanced_configurations = optional(map(string))
    state                         = optional(string)
    network_configuration = object({
      access_control_rules = optional(list(object({
        ip_notation = optional(string)
        value       = optional(string)
        vcn_ips     = optional(string)
      })))
      host_name_prefix = optional(string)
      network_type     = string
      nsg_ids          = optional(set(string))
      subnet_id        = optional(string)
      vcn_id           = optional(string)
    })
    driver_shape_config = optional(object({
      memory_in_gbs = optional(number)
      ocpus         = optional(number)
    }))
    executor_shape_config = optional(object({
      memory_in_gbs = optional(number)
      ocpus         = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dataflow_sql_endpoints : (
        contains([for v in ["SECURE_ACCESS", "VCN"] : lower(v)], lower(v.network_configuration.network_type))
      )
    ])
    error_message = "must be one of: \"SECURE_ACCESS\", \"VCN\""
  }
  validation {
    condition = alltrue([
      for k, v in var.dataflow_sql_endpoints : (
        v.state == null || (contains([for v in ["CREATING", "ACTIVE", "DELETING", "DELETED", "FAILED", "UPDATING", "NEEDS_ATTENTION", "INACTIVE"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"CREATING\", \"ACTIVE\", \"DELETING\", \"DELETED\", \"FAILED\", \"UPDATING\", \"NEEDS_ATTENTION\", \"INACTIVE\""
  }
}

