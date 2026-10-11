output "dataflow_sql_endpoints_id" {
  description = "Map of id values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no id are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataflow_sql_endpoints_compartment_id" {
  description = "Map of compartment_id values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no compartment_id are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "dataflow_sql_endpoints_defined_tags" {
  description = "Map of defined_tags values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no defined_tags are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "dataflow_sql_endpoints_description" {
  description = "Map of description values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no description are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dataflow_sql_endpoints_display_name" {
  description = "Map of display_name values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no display_name are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dataflow_sql_endpoints_driver_shape" {
  description = "Map of driver_shape values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no driver_shape are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.driver_shape if v.driver_shape != null && length(v.driver_shape) > 0 }
}
output "dataflow_sql_endpoints_driver_shape_config" {
  description = "Map of driver_shape_config values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no driver_shape_config are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => one(v.driver_shape_config) if v.driver_shape_config != null && length(v.driver_shape_config) > 0 }
}
output "dataflow_sql_endpoints_executor_shape" {
  description = "Map of executor_shape values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no executor_shape are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.executor_shape if v.executor_shape != null && length(v.executor_shape) > 0 }
}
output "dataflow_sql_endpoints_executor_shape_config" {
  description = "Map of executor_shape_config values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no executor_shape_config are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => one(v.executor_shape_config) if v.executor_shape_config != null && length(v.executor_shape_config) > 0 }
}
output "dataflow_sql_endpoints_freeform_tags" {
  description = "Map of freeform_tags values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "dataflow_sql_endpoints_jdbc_endpoint_url" {
  description = "Map of jdbc_endpoint_url values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no jdbc_endpoint_url are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.jdbc_endpoint_url if v.jdbc_endpoint_url != null && length(v.jdbc_endpoint_url) > 0 }
}
output "dataflow_sql_endpoints_lake_id" {
  description = "Map of lake_id values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no lake_id are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.lake_id if v.lake_id != null && length(v.lake_id) > 0 }
}
output "dataflow_sql_endpoints_log_compartment_id" {
  description = "Map of log_compartment_id values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no log_compartment_id are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.log_compartment_id if v.log_compartment_id != null && length(v.log_compartment_id) > 0 }
}
output "dataflow_sql_endpoints_log_display_name" {
  description = "Map of log_display_name values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no log_display_name are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.log_display_name if v.log_display_name != null && length(v.log_display_name) > 0 }
}
output "dataflow_sql_endpoints_log_group_id" {
  description = "Map of log_group_id values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no log_group_id are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.log_group_id if v.log_group_id != null && length(v.log_group_id) > 0 }
}
output "dataflow_sql_endpoints_log_retention_duration" {
  description = "Map of log_retention_duration values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no log_retention_duration are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.log_retention_duration if v.log_retention_duration != null }
}
output "dataflow_sql_endpoints_max_executor_count" {
  description = "Map of max_executor_count values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no max_executor_count are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.max_executor_count if v.max_executor_count != null }
}
output "dataflow_sql_endpoints_metastore_id" {
  description = "Map of metastore_id values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no metastore_id are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.metastore_id if v.metastore_id != null && length(v.metastore_id) > 0 }
}
output "dataflow_sql_endpoints_min_executor_count" {
  description = "Map of min_executor_count values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no min_executor_count are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.min_executor_count if v.min_executor_count != null }
}
output "dataflow_sql_endpoints_network_configuration" {
  description = "Map of network_configuration values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no network_configuration are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => one(v.network_configuration) if v.network_configuration != null && length(v.network_configuration) > 0 }
}
output "dataflow_sql_endpoints_spark_advanced_configurations" {
  description = "Map of spark_advanced_configurations values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no spark_advanced_configurations are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.spark_advanced_configurations if v.spark_advanced_configurations != null && length(v.spark_advanced_configurations) > 0 }
}
output "dataflow_sql_endpoints_sql_endpoint_version" {
  description = "Map of sql_endpoint_version values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no sql_endpoint_version are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.sql_endpoint_version if v.sql_endpoint_version != null && length(v.sql_endpoint_version) > 0 }
}
output "dataflow_sql_endpoints_state" {
  description = "Map of state values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no state are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.state if v.state != null && length(v.state) > 0 }
}
output "dataflow_sql_endpoints_state_message" {
  description = "Map of state_message values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no state_message are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.state_message if v.state_message != null && length(v.state_message) > 0 }
}
output "dataflow_sql_endpoints_system_tags" {
  description = "Map of system_tags values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no system_tags are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "dataflow_sql_endpoints_time_created" {
  description = "Map of time_created values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no time_created are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "dataflow_sql_endpoints_time_updated" {
  description = "Map of time_updated values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no time_updated are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "dataflow_sql_endpoints_warehouse_bucket_uri" {
  description = "Map of warehouse_bucket_uri values across all dataflow_sql_endpoints, keyed the same as var.dataflow_sql_endpoints except keys with no warehouse_bucket_uri are omitted"
  value       = { for k, v in oci_dataflow_sql_endpoint.dataflow_sql_endpoints : k => v.warehouse_bucket_uri if v.warehouse_bucket_uri != null && length(v.warehouse_bucket_uri) > 0 }
}

