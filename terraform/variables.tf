variable "aws_region" {
  default = "eu-central-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
  key_name    = "github-actions-key"
  public_key  = file("${path.module}/ec2-github.pub")
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}