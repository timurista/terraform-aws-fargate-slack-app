variable "aws_region" {
  default = "us-east-1"
}

variable "aws_zones" {
 type        = "list"
 description = "List of availability zones to use"
 default     = ["us-east-1c", "us-east-1d", "us-east-1e"]
}