provider "lakefs" {
  endpoint   = "http://lakefs.lakefs.svc.cluster.local:80"
  access_key = "access_key_here"
  secret_key = "secret_key_here"
}

resource "lakefs_repository" "example" {
  repository_id    = "my-repo"
  storage_namespace = "s3://lakefs/"
  description      = "Example lakeFS repo on MinIO"
  default_branch   = "main"
}
