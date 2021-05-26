variable "region" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "server_name" {
  type = string
}

variable "instance_count" {
  type    = number
  default = 1
}

// this is a require variable must to input.
variable "instance_az" {
  type = string
}