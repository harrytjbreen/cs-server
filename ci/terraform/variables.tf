variable "tag_name" {
    default = "cs"
    type = string
}

variable "region" {
    default = "eu-west-2"
    type = string
}

variable "bucket_name" {
    default = "harrybreen-cs-frontend"
    type = string
}

variable "hosted_zone" {
    default = "harrybreen.co.uk"
    type = string
}

variable "record_name" {
    default = "cs.harrybreen.co.uk"
    type = string
}

variable "aliases" {
    default = ["cs.harrybreen.co.uk"]
    type = list(string)
}

variable "cognito_pool_name" {
    default = "cs-cognito-pool"
    type = string
}