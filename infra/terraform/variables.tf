variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-2"
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "cloudship"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "my_ip_cidr" {
  description = "My public IP CIDR for SSH access (used only when enable_ssh=true)"
  type        = string
}

variable "enable_ssh" {
  description = "Temporarily allow SSH for break-glass access"
  type        = bool
  default     = false
}
