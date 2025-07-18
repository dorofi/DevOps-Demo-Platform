output "kubernetes_cluster_info" {
  value = kubernetes_cluster.example.endpoint
  description = "Kubernetes cluster endpoint"
}
