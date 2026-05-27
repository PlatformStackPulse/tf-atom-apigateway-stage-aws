variable "rest_api_id" {
  description = "ID of the REST API"
  type        = string
  validation {
    condition     = length(var.rest_api_id) > 0
    error_message = "rest_api_id must not be empty."
  }
}

variable "deployment_id" {
  description = "ID of the deployment"
  type        = string
  validation {
    condition     = length(var.deployment_id) > 0
    error_message = "deployment_id must not be empty."
  }
}

variable "stage_name" {
  description = "Name of the stage"
  type        = string
  default     = "v1"
}

variable "description" {
  description = "Description of the stage"
  type        = string
  default     = null
}

variable "access_log_destination_arn" {
  description = "ARN of the CloudWatch log group for access logs"
  type        = string
}

variable "access_log_format" {
  description = "Format of the access logs (JSON recommended)"
  type        = string
  default     = "{\"requestId\":\"$context.requestId\",\"ip\":\"$context.identity.sourceIp\",\"caller\":\"$context.identity.caller\",\"user\":\"$context.identity.user\",\"requestTime\":\"$context.requestTime\",\"httpMethod\":\"$context.httpMethod\",\"resourcePath\":\"$context.resourcePath\",\"status\":\"$context.status\",\"protocol\":\"$context.protocol\",\"responseLength\":\"$context.responseLength\"}"
}
