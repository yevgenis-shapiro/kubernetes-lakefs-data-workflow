
resource "helm_release" "postgresql" {
  name             = "postgresql-ha"
  repository       = "https://charts.bitnami.com/bitnami"
  chart            = "postgresql-ha"
  namespace        = "default"
  create_namespace = true
  timeout          = 600
  wait             = true

  set {
    name  = "postgresql.username"
    value = "postgres"
  }

  set {
    name  = "postgresql.password"
    value = "postgres"
  }
}

resource "kubernetes_job" "create_lakefs_db" {
  metadata {
    name      = "create-lakefs-db"
    namespace = helm_release.postgresql.namespace
  }

  spec {
    template {
      spec {
        restart_policy = "OnFailure"

        container {
          name  = "create-db"
          image = "bitnami/postgresql:15"
          command = ["psql"]
          args = [
            "-h", "postgresql-ha-postgresql-ha-pgpool",
            "-U", "postgres",
            "-c", "CREATE DATABASE lakefs;"
          ]
          env {
            name  = "PGPASSWORD"
            value = "postgres"
          }
        }
      }
    }
  }

  depends_on = [helm_release.postgresql]
}
