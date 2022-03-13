provider "aws" {
  region = var.aws_region
}

module "budget" {
  source    = "./modules/budget"
  prefix    = var.prefix
  limit     = "50.0"
  time_unit = "MONTHLY"
  begin     = "2022-01-01_00:01"
}

module "kms" {
  source = "./modules/kms"
}

module "s3-state" {
  source      = "./modules/s3-state"
  prefix      = var.prefix
  kms_key_arn = module.kms.kms_key_arn
}

module "s3-web" {
  source      = "./modules/s3-web"
  site_domain = var.site_domain
}

module "dynamo" {
  source = "./modules/dynamodb"
}