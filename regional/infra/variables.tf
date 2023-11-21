variable "environment" {
  description = "The environment for example: `sandbox`, `non-production`, `production`"
  type        = string
  default     = "sandbox"
}

variable "kubernetes_service_projects" {
  description = "The set of Kubernetes service projects"
  type        = set(string)
  default     = []
}

variable "region" {
  description = "The region for this subnetwork"
  type        = string
}

variable "remote_bucket" {
  type        = string
  description = "The remote bucket the `terraform_remote_state` data source retrieves the state from"
}

variable "subnets" {
  description = "The map of subnets to create"
  type = map(object({
    ip_cidr_range          = string
    master_ip_cidr_range   = string
    pod_ip_cidr_range      = string
    services_ip_cidr_range = string
  }))
}
