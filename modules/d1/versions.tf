# Cloudflare no es de hashicorp/, así que cada módulo tiene que decir de dónde viene el provider
terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.0"
    }
  }
}
