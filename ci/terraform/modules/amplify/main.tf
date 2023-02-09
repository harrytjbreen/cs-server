resource "aws_amplify_app" "frontend" {
  name = var.name
}

resource "aws_amplify_backend_environment" "backend" {
  app_id           = aws_amplify_app.frontend.id
  environment_name = "prod"
}