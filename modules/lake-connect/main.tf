
provider "lakefs" {
  endpoint   = "http://lakefs.lakefs.svc.cluster.local:80"
  access_key = "AKIAJ25JLGWO747UT5FQ"
  secret_key = "xtjzyzES3sEzwhyaZHEY4vzEvNhtTfb6Fty4kAye"
}

resource "lakefs_repository" "example" {
  repository_id    = "my-repo"
  storage_namespace = "s3://lakefs/"
  description      = "Example lakeFS repo on MinIO"
  default_branch   = "main"
}
