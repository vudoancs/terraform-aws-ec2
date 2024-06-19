variable "aws_region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "ap-southeast-1"
}

variable "instance_type" {
  description = "The type of instance to use."
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID to use for the instance."
  type        = string
  sensitive   = true
}
