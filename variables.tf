variable "values" {
  type        = list(string)
  description = "List YAML encoded values to be passed to chart"
}

variable "name" {
  type        = string
  description = "deployment name"
}

variable "namespace" {
  type        = string
  description = "Namespace to deploy"
}
