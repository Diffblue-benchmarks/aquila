locals {
  kafka_endpoint =  "${var.kafka_hostname}:${var.kafka_port}"
}

module "aquila-detector" {
  source = "aquila-detect"

  # Docker
  image = "${var.aquila-detector["image"]}"
  image_pull_policy = "${var.aquila-detector["image_pull_policy"]}"

  # Kubernetes
  namespace = "${var.app_namespace}"
  enabled = "${var.aquila-detector["enabled"]}"
  replicas = "${var.aquila-detector["instances"]}"
  cpu_limit = "${var.aquila-detector["cpu_limit"]}"
  cpu_request = "${var.aquila-detector["cpu_request"]}"
  memory_limit = "${var.aquila-detector["memory_limit"]}"
  memory_request = "${var.aquila-detector["memory_request"]}"
  node_selector_label = "${var.node_selector_label}"
  kubectl_executable_name = "${var.kubectl_executable_name}"
  kubectl_context_name = "${var.kubectl_context_name}"

  # Environment
  jvm_memory_limit = "${var.aquila-detector["jvm_memory_limit"]}"
  graphite_hostname = "${var.graphite_hostname}"
  graphite_port = "${var.graphite_port}"
  graphite_enabled = "${var.graphite_enabled}"
  env_vars = "${var.aquila-detector["environment_overrides"]}"
}

module "aquila-trainer" {
  source = "aquila-train"

  # Docker
  image = "${var.aquila-trainer["image"]}"
  image_pull_policy = "${var.aquila-trainer["image_pull_policy"]}"

  # Kubernetes
  namespace = "${var.app_namespace}"
  enabled = "${var.aquila-trainer["enabled"]}"
  replicas = "${var.aquila-trainer["instances"]}"
  cpu_limit = "${var.aquila-trainer["cpu_limit"]}"
  cpu_request = "${var.aquila-trainer["cpu_request"]}"
  memory_limit = "${var.aquila-trainer["memory_limit"]}"
  memory_request = "${var.aquila-trainer["memory_request"]}"
  node_selector_label = "${var.node_selector_label}"
  kubectl_executable_name = "${var.kubectl_executable_name}"
  kubectl_context_name = "${var.kubectl_context_name}"

  # Environment
  jvm_memory_limit = "${var.aquila-trainer["jvm_memory_limit"]}"
  graphite_hostname = "${var.graphite_hostname}"
  graphite_port = "${var.graphite_port}"
  graphite_enabled = "${var.graphite_enabled}"
  env_vars = "${var.aquila-trainer["environment_overrides"]}"
}
