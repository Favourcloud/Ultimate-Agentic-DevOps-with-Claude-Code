variable "region" {
  description = "AWS region for the S3 bucket. CloudFront itself is global."
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Short name used to prefix and tag resources."
  type        = string
  default     = "portfolio-site"
}

variable "environment" {
  description = "Deployment environment, used for tagging."
  type        = string
  default     = "production"
}

variable "domain_name" {
  description = "Optional custom domain for the site. Leave empty to use the default CloudFront domain."
  type        = string
  default     = ""
}
