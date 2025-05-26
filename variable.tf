variable "public_key" {
  description = "Public SSH key content"
  type        = string
}

variable "ami" {
    description = "ami id is dofferent to different workspace env."
    type = string
}

variable "instance_type" {
    description = "instance type of ec2"
    type = string
}
