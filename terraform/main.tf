module "budget" {
  source    = "./modules/budget"
  prefix = var.prefix
  limit     = "50.0"
  time_unit = "MONTHLY"
  begin     = "2022-01-01_00:01"
}

module "kms" {
  source = "./modules/kms"
}

module "s3" {
  domain_name = var.domain_name
  common_tags = var.common_tags
  source      = "./modules/s3"
  prefix = var.prefix
  kms_key_arn = module.kms.kms_key_arn
}

module "dynamo" {
  source = "./modules/dynamodb"
}