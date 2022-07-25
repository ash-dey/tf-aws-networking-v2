# Define providers to use - can use mutiple providers in the same code
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = ">= 1.2.0"

  # define terraform cloud targets e.g. organization and workspace
  cloud {}
}
