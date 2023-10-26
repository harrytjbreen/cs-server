# This will read the .env file and create a map of the environment variables
locals {
    dot_env_file_path = ".env"
    dot_env_regex     = "(?m:^\\s*([^#\\s]\\S*)\\s*=\\s*[\"']?(.*[^\"'\\s])[\"']?\\s*$)"
    dot_env           = { for tuple in regexall(local.dot_env_regex, file(local.dot_env_file_path)) : tuple[0] => sensitive(tuple[1]) }
    access_key        = local.dot_env["ACCESS_KEY"]
    secret_key        = local.dot_env["SECRET_KEY"]
}

variable "region" {
    default = "eu-west-2"
}
