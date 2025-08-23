
resource "helm_release" "postgresql" {
  name             = "postgresql-ha"
  repository       = "https://charts.bitnami.com/bitnami"
  chart            = "postgresql-ha"
  namespace        = "default"
  create_namespace = true
  timeout          = 600
  wait             = true

  values = [
    file("${path.module}/values-postgresql.yaml")
  ]
}
