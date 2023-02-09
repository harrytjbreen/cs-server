resource "aws_cognito_user_pool" "pool" {
  name               = var.pool_name
}

resource "aws_cognito_user_pool_client" "frontend" {
  name         = "${var.pool_name}-client"
  user_pool_id = aws_cognito_user_pool.pool.id
}