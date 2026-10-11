output "odb_cloud_autonomous_vm_clusters_lookup_cloud_autonomous_vm_clusters" {
  description = "Map of cloud_autonomous_vm_clusters values across all odb_cloud_autonomous_vm_clusters_lookup, keyed the same as var.odb_cloud_autonomous_vm_clusters_lookup"
  value       = { for k, v in data.aws_odb_cloud_autonomous_vm_clusters.odb_cloud_autonomous_vm_clusters_lookup : k => v.cloud_autonomous_vm_clusters if v.cloud_autonomous_vm_clusters != null && length(v.cloud_autonomous_vm_clusters) > 0 }
}
output "odb_cloud_autonomous_vm_clusters_lookup_region" {
  description = "Map of region values across all odb_cloud_autonomous_vm_clusters_lookup, keyed the same as var.odb_cloud_autonomous_vm_clusters_lookup"
  value       = { for k, v in data.aws_odb_cloud_autonomous_vm_clusters.odb_cloud_autonomous_vm_clusters_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

