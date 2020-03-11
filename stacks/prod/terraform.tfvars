aws_region  = "eu-west-1"
cid         = "18-000"
customer    = "acme"
owner       = "me"
project     = "globalinfra"
environment = "staging"

# workspace will be deprecated as a declared variable, shall be moved to ENV_VAR
# terraform_workspace = "default"

# remote_state_bucket and dynamodb_table have to be created manually in stacks/global/state
remote_state_bucket = "acme-me-globalinfra-remote-state-bucket"
