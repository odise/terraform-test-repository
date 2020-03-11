variable account_ids {
  description = "Account IDs, which are allowed to access the resources"
  type        = list
}

variable aws_region {
  description = "The AWS region we are working in"
}

variable cid {
  description = "The Cost center ID for tagging resources"
}

variable customer {
  description = "The customer name"
}

variable environment {
  description = "Something like prod, preprod, stage, test etc."
}

variable owner {
  description = "The customer staff owning the project"
}

variable project {
  description = "The project name"
}

variable remote_state_bucket {
  description = "The remote state bucket (create in stacks/global/state)"
}
