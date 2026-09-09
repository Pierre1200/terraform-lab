variable "container_name" {
  description = "Name of the Docker container managed by Terraform"
  type        = string
  default     = "devops-lab-web"
}

variable "internal_port" {
  description = "Container internal HTTP port"
  type        = number
  default     = 80
}

variable "external_port" {
  description = "Host port mapped to the container HTTP port"
  type        = number
  default     = 8081
}

variable "image_name" {
  description = "Docker image name and tag to run"
  type        = string
}
