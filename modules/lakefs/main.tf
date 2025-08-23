
resource "helm_release" "lakefs" {
  name       = "lakefs"
  repository = "https://charts.lakefs.io"
  chart      = "lakefs"
  namespace  = "lakefs"
  create_namespace = true

  # Example: override values
  set {
    name  = "database.connectionString"
    value = "postgres://postgres:postgres@postgres:5432/lakefs?sslmode=disable"
  }

  set {
    name  = "blockstore.type"
    value = "s3"
  }

  set {
    name  = "blockstore.s3.region"
    value = "us-west-rack2"
  }

  set {
    name  = "blockstore.s3.endpoint"
    value = "http://minio.default.svc.cluster.local:9000"
  }

  set {
    name  = "blockstore.s3.credentials.accessKey"
    value = "root"
  }

  set {
    name  = "blockstore.s3.credentials.secretKey"
    value = "q1w2e3r4100@"
  }
}
