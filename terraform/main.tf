# Invokes Budget module
module "budget" {
  source    = "./modules/budget"
  base_name = var.prefix
  limit     = "50.0"
  time_unit = "MONTHLY"
  begin     = "2022-01-01_00:01"
}

