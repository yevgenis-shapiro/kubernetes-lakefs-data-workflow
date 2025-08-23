
resource "helm_release" "lakefs" {
  name       = "lakefs"
  repository = "https://charts.lakefs.io"
  chart      = "lakefs"
  namespace  = "lakefs"
  create_namespace = true

  # Example: override values
  set {
    name  = "database.connectionString"
    value = "postgres://user:password@postgres:5432/lakefs?sslmode=disable"
  }

  set {
    name  = "blockstore.type"
    value = "s3"
  }

  set {
    name  = "blockstore.s3.region"
    value = "us-east-1"
  }

  set {
    name  = "blockstore.s3.endpoint"
    value = "https://s3.amazonaws.com"
  }

  set {
    name  = "blockstore.s3.credentials.accessKey"
    value = "your-access-key"
  }

  set {
    name  = "blockstore.s3.credentials.secretKey"
    value = "your-secret-key"
  }
}
