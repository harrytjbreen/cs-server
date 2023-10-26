resource "aws_cognito_user_pool" "pool" {
  name = var.pool_name
  account_recovery_setting {
    recovery_mechanism {
      name     = "verified_email"
      priority = 1
    }
  }
  admin_create_user_config {
    allow_admin_create_user_only = true
  }
}

resource "aws_cognito_user_pool_client" "pool_client" {
  name         = "${var.pool_name}-client"
  user_pool_id = aws_cognito_user_pool.pool.id
}
