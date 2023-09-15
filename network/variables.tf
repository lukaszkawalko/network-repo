variable "resource_group_name" {
  type = string
  description = "Resource group name"
}

variable "location" {
  type    = string
  default = "polandcentral"

  validation {
    condition     = contains(["westeurope", "polandcentral"], var.location)
    error_message = "Location must be either westeurope or northeurope"
  }
}

variable "environment" {
  type        = string
  description = "Environment name"

  validation {
    condition     = contains(["dev", "prod"], var.environment)
    error_message = "Environment must be either dev or prod"
  }
}

variable "prefix" {
  type        = string
  description = "Project prefix"

  
}