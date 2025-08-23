
resource "helm_release" "postgresql" {
  name             = "postgresql-ha"
  repository       = "https://charts.bitnami.com/bitnami"
  chart            = "postgresql-ha"
  namespace        = "default"
  create_namespace = true
  timeout          = 300

  set {
    name  = "username"
    value = "postgres"
  }

  set {
    name  = "password"
    value = "postgres"
  }

}

resource "null_resource" "wait_for_postgresql" {
  triggers = {
    key = uuid()
  }

  provisioner "local-exec" {
    command = <<EOF
      printf "\nWaiting for the linkerd pods to start...\n"
      sleep 5
      until kubectl wait -n ${helm_release.postgresql.namespace} --for=condition=Ready pods --all; do
        sleep 2
      done  2>/dev/null
    EOF
  }

  depends_on = [helm_release.postgresql]
}
