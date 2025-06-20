variable "public_key" {
  description = "Public SSH key content"
  default = file("c:/users/acer/.ssh/web-host.pub")
}

variable "ami" {
    description = "ami id is dofferent to different workspace env."
    default = "ami-0f918f7e67a3323f0"
}

variable "instance_type" {
    description = "instance type of ec2"
    default = "t2.micro"
}
