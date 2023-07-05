resource "helm_release" "deployment" {
  name        = var.name
  description = var.description
  namespace   = var.namespace

  repository = var.repository
  chart      = try(var.chart, "${path.module}/chart")
  version    = var.chart_version

  create_namespace = var.create_namespace
  disable_webhooks = var.disable_webhooks

  repository_username = var.repository_username
  repository_password = var.repository_password

  values = concat(var.values, var.sensitive_values)

  cleanup_on_fail = var.cleanup_on_fail
  force_update    = var.force_update
  timeout         = var.timeout
  recreate_pods   = var.recreate_pods
  atomic          = var.atomic
  wait            = var.wait
  wait_for_jobs   = var.wait_for_jobs
}
