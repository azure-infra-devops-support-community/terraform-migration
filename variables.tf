variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}
variable "location" {
  type        = string
  description = "Resources location in Azure"
}
variable "cluster_name" {
  type        = string
  description = "AKS name in Azure"
}
variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
}
variable "system_node_count" {
  type        = number
  description = "Number of AKS worker nodes"
}

variable "subscription_id" {
  type        = string
  description = "Azure sub"
}
variable "client_id" {
  type        = string
  description = "SP id"
}
variable "client_secret" {
  type        = string
  description = "SP secret"
}
variable "tenant_id" {
  type        = string
  description = "Azure tenant id"
}
