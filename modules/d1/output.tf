output "database_id" {
  value       = cloudflare_d1_database.this.id
  description = "ID de la base de datos D1"
}

output "database_name" {
  value       = cloudflare_d1_database.this.name
  description = "Nombre de la base de datos D1"
}
