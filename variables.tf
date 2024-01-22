variable "container_group_name" {
  default       = "myContGroup"
  description   = "The name of the container group"
}

variable "resource_group_name" {
  default       = "gitlab"
  description   = "The name of the resource group"
}

variable "location" {
  default       = "Canada Central"  
  description   = "Azure location"
}

variable "dns_name_label" {
  description   = "The DNS label/name for the container groups IP"
}


variable "container_name" {
  default       = "gitlab"  
  description   = "The name of the container"
}

variable "image_name" {
  description   = "The container image name"
  default       = "gitlabansible.azurecr.io/weather_application:latest"
}

variable "cpu_core_number" {
  default       = "0.5"  
  description   = "The required number of CPU cores of the containers"
}

variable "memory_size" {
  default       = "1.5"  
  description   = "The required memory of the containers in GB"
}

variable "port_number" {
  default       = "3000"  
  description   = "A public port for the container"
}
