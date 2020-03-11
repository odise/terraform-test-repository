locals {
  application_list       = ["Spark", "Livy", "Hive", "Ganglia", "Sqoop"]
  applications_port_list = ["Livy", "Ganglia"]
  #applications_port_list = ["Livy"]
  name_prefix = "${var.project}-${var.environment}"
}

module "emrclusterapps" {
  source = "../../modules/security"

  name                   = "master-ports"
  applications_port_list = local.applications_port_list
  security_groups        = [data.aws_security_group.default.id]
  vpc_id                 = data.aws_vpc.default.id

  tags        = { Name = "${local.name_prefix}-additional-ports" }
  environment = var.environment
  owner       = var.owner
  customer    = var.customer
  project     = var.project
}
