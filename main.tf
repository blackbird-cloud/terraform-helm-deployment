resource "helm_release" "deployment" {
  name       = var.name
  namespace  = var.namespace
  chart      = var.chart != "" ? var.chart : "${path.module}/chart"
  repository = var.chart != "" ? var.repository : null

  version = var.chart != "" ? var.chart_version : null
  dynamic "set_sensitive" {
    for_each = var.sensitive_values
    content {
      name  = set_sensitive.value.name
      value = set_sensitive.value.value
      type  = set_sensitive.value.type
    }
  }

  values = var.values
}
