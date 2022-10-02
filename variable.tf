variable vmSize {
  type        = string
  default     = "standard_d2_v2"
  description = "Virtual Machine Size"
}

variable nodes {
  type        = string
  default     = "2"
  description = "Number of Nodes"
}

variable cluster_name {
  type        = string
  default     = "moodyk8s"
  description = "Cluster Name"
}

variable rg_name {
  type        = string
  default     = "k8sResourceGroup"
  description = "Resource Group Name"
}

variable rg_location {
  type        = string
  default     = "northeurope"
  description = "Location"
}
