variable "name" {
    default = "custom vpc"
}


variable "delimiter" {
    default = ","
}

variable "attributes" {
    default = {
        "foo" = "bar"
    }
}

variable "tags" {
    default = {
        spendCategory = "test"
    }
}

// VPC

variable "namespace" {
    default = "mynamespace"
}

variable "stage" {
    default = "dev"
}

variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
}

variable "availability_zones" {
    default = [
        "us-east-1a",
        "us-east-1b",
        "us-east-1c",
    ]
}

// KUBERNETES
variable "kubernetes_version" {
    default = "1.18.0"
}

variable "region" {
    default = "us-east-1"
}