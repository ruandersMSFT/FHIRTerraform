variable "location" {
  type        = string
}

variable "resource_group_name" {
  type        = string
}

variable "name" {
  type        = string
}

variable "resource_prefix" {
  type        = string
}

variable "application_type" {
  type        = string
}

variable "workspace_id" {
  type        = string
}

variable "sampling_percentage" {
  type        = number
}

variable "ampls_scope_name" {
  type        = string
}

variable "tags" {
  type        = map(string)
  default     = {}
}
