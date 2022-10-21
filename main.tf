resource "helm_release" "deployment" {
  name       = var.name
  namespace  = var.namespace
  chart      = var.chart != "" ? var.chart : "${path.module}/chart"
  repository = var.chart != "" ? var.repository : null

  version = var.chart != "" ? var.chart_version : null


  values = var.values
}
