variable "image_registry_server" {
  description = "The server address of the image registry"
  default     = "gitlabansible.azurecr.io"
}

variable "image_registry_username" {
  description = "The username for the image registry"
  default     = "gitlabansible"
}

variable "image_registry_password" {
  description = "The password for the image registry"
  default     = "zjrACyWnM/JIvRN/tvafKpIVQsK00e+35LojMIo/sI+ACRDC+ScJ"
}
variable "resource_group_name" {
  default     = "aci"
  description = "The name of the resource group"
}

variable "location" {
  default     = "Canada Central"
  description = "Azure location"
}

variable "container_group_name" {
  default     = "myacis"
  description = "The name of the container group"
}

variable "dns_name_label" {
  description = "The DNS label/name for the container groups IP"
  default     = "aciproject"
}

variable "container_name" {
  default     = "first"
  description = "The name of the container"
}

variable "image_name" {
  description = "The container image name"
  default     = "gitlabansible.azurecr.io/weather_application:latest"
}

variable "cpu_core_number" {
  default     = "0.5"
  description = "The required number of CPU cores of the containers"
}

variable "memory_size" {
  default     = "1.5"
  description = "The required memory of the containers in GB"
}

variable "port_number" {
  default     = "3000"
  description = "A public port for the container"
}
