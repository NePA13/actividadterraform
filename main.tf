# Módulo de la base de datos D1
module "d1" {
  source = "./modules/d1"

  account_id    = var.account_id
  database_name = var.d1_database_name
}

# Módulo del Worker, recibe el id de la D1 que crea el módulo de arriba
module "worker" {
  source = "./modules/worker"

  account_id     = var.account_id
  worker_name    = var.worker_name
  d1_database_id = module.d1.database_id
}
