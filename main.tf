resource "oci_dataflow_sql_endpoint" "dataflow_sql_endpoints" {
  for_each = var.dataflow_sql_endpoints

  compartment_id                = each.value.compartment_id
  display_name                  = each.value.display_name
  driver_shape                  = each.value.driver_shape
  executor_shape                = each.value.executor_shape
  max_executor_count            = each.value.max_executor_count
  metastore_id                  = each.value.metastore_id
  min_executor_count            = each.value.min_executor_count
  sql_endpoint_version          = each.value.sql_endpoint_version
  defined_tags                  = each.value.defined_tags
  description                   = each.value.description
  freeform_tags                 = each.value.freeform_tags
  log_compartment_id            = each.value.log_compartment_id
  log_display_name              = each.value.log_display_name
  log_group_id                  = each.value.log_group_id
  log_retention_duration        = each.value.log_retention_duration
  spark_advanced_configurations = each.value.spark_advanced_configurations
  state                         = each.value.state

  network_configuration {
    dynamic "access_control_rules" {
      for_each = each.value.network_configuration.access_control_rules != null ? each.value.network_configuration.access_control_rules : []
      content {
        ip_notation = access_control_rules.value.ip_notation
        value       = access_control_rules.value.value
        vcn_ips     = access_control_rules.value.vcn_ips
      }
    }
    host_name_prefix = each.value.network_configuration.host_name_prefix
    network_type     = each.value.network_configuration.network_type
    nsg_ids          = each.value.network_configuration.nsg_ids
    subnet_id        = each.value.network_configuration.subnet_id
    vcn_id           = each.value.network_configuration.vcn_id
  }

  dynamic "driver_shape_config" {
    for_each = each.value.driver_shape_config != null ? [each.value.driver_shape_config] : []
    content {
      memory_in_gbs = driver_shape_config.value.memory_in_gbs
      ocpus         = driver_shape_config.value.ocpus
    }
  }

  dynamic "executor_shape_config" {
    for_each = each.value.executor_shape_config != null ? [each.value.executor_shape_config] : []
    content {
      memory_in_gbs = executor_shape_config.value.memory_in_gbs
      ocpus         = executor_shape_config.value.ocpus
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
}

