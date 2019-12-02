provider "aws" {
  profile    = "linux-academy-user"
  region     = "us-east-1"
}

module "consul" {
  source      = "hashicorp/consul/aws"
  num_servers = "3"
}