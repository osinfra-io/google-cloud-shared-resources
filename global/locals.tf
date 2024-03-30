# Local Values
# https://www.terraform.io/docs/language/values/locals.html

locals {
  domain_environment = var.environment == "prod" ? "" : var.environment

  labels = {
    env        = var.environment
    repository = "google-cloud-networking"
    platform   = "google-cloud-landing-zone"
    team       = "platform-google-cloud-landing-zone"
  }
}
