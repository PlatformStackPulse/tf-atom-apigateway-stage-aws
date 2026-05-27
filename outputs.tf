output "enabled" {
  description = "Whether the module is enabled"
  value       = local.enabled
}

output "id" {
  description = "ID of the stage"
  value       = try(aws_api_gateway_stage.this[0].id, null)
}

output "arn" {
  description = "ARN of the stage"
  value       = try(aws_api_gateway_stage.this[0].arn, null)
}

output "invoke_url" {
  description = "URL to invoke the API"
  value       = try(aws_api_gateway_stage.this[0].invoke_url, null)
}

output "execution_arn" {
  description = "Execution ARN for the stage"
  value       = try(aws_api_gateway_stage.this[0].execution_arn, null)
}
