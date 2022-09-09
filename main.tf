resource "helm_release" "deployment" {
  name      = var.name
  namespace = var.namespace
  chart     = "${path.module}/chart"

  values = var.values
}
