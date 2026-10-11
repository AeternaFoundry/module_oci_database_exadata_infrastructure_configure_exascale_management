resource "oci_database_exadata_infrastructure_configure_exascale_management" "database_exadata_infrastructure_configure_exascale_managements" {
  for_each = var.database_exadata_infrastructure_configure_exascale_managements

  exadata_infrastructure_id = each.value.exadata_infrastructure_id
  total_storage_in_gbs      = each.value.total_storage_in_gbs
  total_vm_storage_in_gbs   = each.value.total_vm_storage_in_gbs

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

