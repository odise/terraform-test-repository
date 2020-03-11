resource "aws_security_group" "allowed_ports" {
  name_prefix = "emr_application_ports"
  description = "Allow EMR application ports"
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    iterator = app
    for_each = var.applications_port_list
    content {
      from_port       = local.applications_map[app.value]["port"]
      to_port         = local.applications_map[app.value]["port"]
      protocol        = "tcp"
      security_groups = var.security_groups
    }
  }
  tags = local.tags
}
