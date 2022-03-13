# This module converts the local backend to a remote backend 
# The terraform.tfstate file is stored by S3 
# The state lock is managed by DynamoDB
# Follow instructions on README.md to enable remote backend

# UNCOMMENT THE BLOCK BELOW THIS LINE TO ENABLE REMOTE STATE
# YOU MUST COMMENT THE LOCAL STATE BLOCK AT THE BOTTOM IF ENABLING REMOTE STATE

# terraform {
#  backend "s3" {
#     bucket         = "tf-aws-s3-5nqe"
#     key            = "state/terraform.tfstate"
#     region         = "us-east-1"
#     encrypt        = true
#     kms_key_id     = "alias/terraform-bucket-key"
#     dynamodb_table = "terraform-state"
#  }
# }

# IF YOU UNCOMMENT THE BLOCK ABOVE, COMMENT THE TEXT BELOW THIS LINE.
# BOTH CANNOT BE ENABLED; ONLY ONE OR THE OTHER

terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}