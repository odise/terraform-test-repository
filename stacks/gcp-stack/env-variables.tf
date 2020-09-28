variable environment {
  type        = string
  description = "Something like prod, preprod, stage, test etc."
  default     = "dev"
}

variable owner {
  type        = string
  description = "The customer staff owning the project"
  default     = "mrkrabs"
}

variable project {
  type        = string
  description = "The project name"
  default     = "burger"
}

# global TF variable definitions to be symlinked in the relevant stacks
# define GCP region
variable gcp_region {
  type        = string
  description = "GCP region"
  default     = "europe-west3"
}

# define GCP project name
variable gcp_project_name {
  type        = string
  description = "GCP project name"
}
