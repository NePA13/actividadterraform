variable "account_id" {
  type        = string
  description = "Cloudflare Account ID"
}

variable "worker_name" {
  type        = string
  description = "Nombre del Worker"
}

variable "d1_database_id" {
  type        = string
  description = "ID de la D1 que se conecta al Worker como binding DB"
}

variable "compatibility_date" {
  type        = string
  description = "Compatibility date del Worker"
  default     = "2026-10-29"
}
