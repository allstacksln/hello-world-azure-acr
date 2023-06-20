variable "name" {
  description = "Name of the cluster"
}

variable "resource_group_name" {
  description = "Resource group name"
}

variable "resource_group_location" {
  description = "Resource group location id"
}

variable "node_count" {
  default     = 1
  description = "Number of nodes for the cluster"
}

variable "tags" {
  description = "Extra descriptors"
  default     = {}
}

