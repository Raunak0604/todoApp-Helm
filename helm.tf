resource "helm_release" "nginx" {
  name        = "nginx"
  chart       = "app-helm"
  repository  = "./charts"
  namespace   = "nginx"
  max_history = 3
  create_namespace = true
  wait             = true
  reset_values     = true
}