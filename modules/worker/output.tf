output "worker_url" {
  value       = data.cloudflare_worker.this.subdomain.url
  description = "URL del Worker desplegado"
}

output "script_name" {
  value       = cloudflare_workers_script.this.script_name
  description = "Nombre del script del Worker"
}
