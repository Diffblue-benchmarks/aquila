variable "kubectl_context_name" {}
variable "kafka_hostname" {}
variable "kafka_port" {}
variable "graphite_hostname" {}
variable "graphite_port" {}
variable "graphite_enabled" {}
variable "kubectl_executable_name" {}
variable "app_namespace" {}
variable "node_selector_label"{}

variable "aquila-detector" {
  type = "map"
}

variable "aquila-trainer" {
  type = "map"
}
