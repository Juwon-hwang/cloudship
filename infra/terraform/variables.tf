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