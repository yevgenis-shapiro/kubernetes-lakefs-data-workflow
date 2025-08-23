
resource "lakefs_repository" "example" {
  repository_id     = var.lakefs_repo_id
  storage_namespace = var.lakefs_s3_bucket
  description       = "Example lakeFS repo on MinIO"
  default_branch    = var.lakefs_default_branch
}
