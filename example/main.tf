provider "helm" {
  kubernetes {
    host                   = "my-k8s-host"
    cluster_ca_certificate = "my-k8s-ca-cert"
    token                  = "my-k8s-token"
  }
}

module "helm_release" {
  source  = "blackbird-cloud/deployment/helm"
  version = "1.2.1"

  name        = "my-app"
  description = "my-app!"
  namespace   = "develop-app"

  cleanup_on_fail = true
  force_update    = true
  wait            = true
  wait_for_jobs   = true

  values = [
    yamlencode({
      image : {
        repository : "my-docker-image"
        tag : "v1.0.0"
      }
    })
  ]
}
