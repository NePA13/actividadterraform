output "worker_url" {
  value       = module.worker.worker_url
  description = "URL del Worker desplegado"
}

output "d1_database_id" {
  value       = module.d1.database_id
  description = "ID de la base de datos D1"
}
