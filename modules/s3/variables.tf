variable "bucket_name" {
  description = "Global unique name for the S3 bucket"
  type        = string
  default     = "custom-bucketstorage"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "Dev"
}
