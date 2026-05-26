resource "aws_api_gateway_stage" "this" {
  count = module.this.enabled ? 1 : 0

  rest_api_id   = var.rest_api_id
  deployment_id = var.deployment_id
  stage_name    = var.stage_name
  description   = var.description

  access_log_settings {
    destination_arn = var.access_log_destination_arn
    format          = var.access_log_format
  }

  tags = module.this.tags
}
