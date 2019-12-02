terraform {
    backend "s3" {
        bucket = "terraform-tfstate-timurista-123456" # ephemeral mmight change
        key = "terraform-aws/terraform.tfstate"
    }
}