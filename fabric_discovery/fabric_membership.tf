terraform {
  required_providers {
    aci = {
      source = "ciscodevnet/aci"
    }
  }
}




# FABRIC MEMBERSHIP

resource "aci_fabric_node_member" "fabricmember" {
  for_each    = var.var_discovery
  name        = each.value.node_name
  serial      = each.value.serial_id
  node_id     = each.value.node_id
  pod_id      = each.value.pod_id
}