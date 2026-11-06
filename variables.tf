variable "api_token" {
  type        = string
  description = "Cloudflare API Token con permisos de Workers y D1"
  sensitive   = true
}

variable "account_id" {
  type        = string
  description = "Cloudflare Account ID"
  sensitive   = true
}

variable "d1_database_name" {
  type        = string
  description = "Nombre de la base de datos D1"
  default     = "my_d1_database"
}

variable "worker_name" {
  type        = string
  description = "Nombre del Cloudflare Worker"
  default     = "my_worker"
}
