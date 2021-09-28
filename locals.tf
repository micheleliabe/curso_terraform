locals {

  ips_path = "ips.json"
  tags = {
    Service     = "Curso Terraform"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Michel Dias"
  }

}
