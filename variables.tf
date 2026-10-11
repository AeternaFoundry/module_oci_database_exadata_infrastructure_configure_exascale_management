variable "database_exadata_infrastructure_configure_exascale_managements" {
  description = <<EOT
Map of database_exadata_infrastructure_configure_exascale_managements, attributes below
Required:
    - exadata_infrastructure_id
    - total_storage_in_gbs
Optional:
    - total_vm_storage_in_gbs
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    exadata_infrastructure_id = string
    total_storage_in_gbs      = number
    total_vm_storage_in_gbs   = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

