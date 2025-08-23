
resource "helm_release" "minio" {
  name       = "minio"
  namespace  = "default"
  repository = "https://charts.min.io/"
  chart      = "minio"
  version    = "5.0.15" # check latest version
  create_namespace = true

  values = [<<EOF
mode: standalone
replicas: 1
auth:
  rootUser: "root"
  rootPassword: "r9G$2vK!7pXq&dL@8zF#eB^4mN*1wQ0"

defaultBuckets: "lakefs,terraform"

resources:
  requests:
    memory: 512Mi
    cpu: 250m
  limits:
    memory: 1Gi
    cpu: 500m

persistence:
  enabled: true
  size: 10Gi
  storageClass: standard # replace with your cluster StorageClass

service:
  type: ClusterIP 
EOF
  ]
}
