
variable "lakefs_endpoint" {
  description = "URL of the lakeFS instance"
  default     = "http://lakefs.lakefs.svc.cluster.local:80"
}

variable "lakefs_access_key" {
  description = "Access key for lakeFS"
  type        = string
  sensitive   = true
}

variable "lakefs_secret_key" {
  description = "Secret key for lakeFS"
  type        = string
  sensitive   = true
}

variable "lakefs_s3_bucket" {
  description = "S3/MinIO bucket for lakeFS storage namespace"
  default     = "s3://lakefs/"
}

variable "lakefs_repo_id" {
  description = "Repository ID in lakeFS"
  default     = "my-repo"
}

variable "lakefs_default_branch" {
  description = "Default branch name"
  default     = "main"
}
