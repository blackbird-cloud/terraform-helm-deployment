output "helm_release" {
  value       = helm_release.deployment
  description = "The installed Helm release."
}
