resource "aws_budgets_budget" "budget" {
  name              = "${var.prefix}-budget"
  budget_type       = "COST"
  limit_amount      = var.limit
  limit_unit        = "USD"
  time_unit         = var.time_unit
  time_period_start = var.begin
}