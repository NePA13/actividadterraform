resource "cloudflare_workers_script" "this" {
  account_id         = var.account_id
  script_name        = var.worker_name
  main_module        = "worker.js"
  content            = file("${path.module}/worker.js")
  compatibility_date = var.compatibility_date

  bindings = [
    {
      name = "DB"
      type = "d1"
      id   = var.d1_database_id
    }
  ]
}

resource "cloudflare_workers_script_subdomain" "this" {
  account_id  = var.account_id
  script_name = cloudflare_workers_script.this.script_name
  enabled     = true
}

data "cloudflare_worker" "this" {
  account_id = var.account_id
  worker_id  = cloudflare_workers_script.this.id
}
