module "cognito" {
  source = "./modules/cognito"
  pool_name = "cs-server-admin-pool"
}
