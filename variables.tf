variable "role_arn" {
  type        = string
  description = "the role arn of target account"
}

variable "env" {
  description = "Name of the environment to depploy resources"
  type        = string
}

variable "app" {
  description = "Name of the app"
  type        = string
  default     = "core-networking"
}

variable "owner" {
  description = "Name of the owner"
  type        = string
  default     = "ICT Infrastructure"
}

variable "deploy" {
  description = "Tools used to deploy"
  type        = string
  default     = "Terraform"
}
