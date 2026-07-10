# ---------------------------------------------------------------------------
# Remote state backend (S3)
#
# State is kept LOCAL on the first run so Terraform can create the state
# bucket (and any other resources) before it tries to store state remotely.
#
# Migration steps:
#   1. First run — leave the block below commented out:
#        terraform init
#        terraform apply          # creates resources, incl. a state bucket
#   2. Create an S3 bucket for state (manually, or add one to this config),
#      then fill in the values below and uncomment the block.
#   3. Migrate the existing local state into S3:
#        terraform init -migrate-state
#
# Bucket versioning + encryption are strongly recommended for the state bucket.
# ---------------------------------------------------------------------------

# terraform {
#   backend "s3" {
#     bucket       = "REPLACE_WITH_STATE_BUCKET_NAME"
#     key          = "portfolio-site/terraform.tfstate"
#     region       = "ap-south-1"
#     encrypt      = true
#     use_lockfile = true
#   }
# }
