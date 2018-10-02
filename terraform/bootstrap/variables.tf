variable "region" {
  type = "string"
  description = "region of deployment"
}

variable "bucket_name" {
  type = "string"
  description = "name of your state file bucket"
  default = "example-terraform-state-files"
}

variable "environment" {
  type = "string"
  description = "environment name"
  default = "dev"
}

variable "project" {
  type = "string"
  description = "name of project"
}

variable "component" {
  type = "string"
  description = "name of the component"
}