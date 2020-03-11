variable applications_port_list {
  default = []
}
variable security_groups {
  default = []
}
variable vpc_id {}

variable name {
  default = "emr_application_ports"
}
variable environment {
  description = "Something like prod, preprod, stage, test etc."
}
variable customer {
  description = "The customer name"
}
variable owner {
  description = "The customer staff owning the project"
}
variable tags {
  default = {}
}
variable project {}
