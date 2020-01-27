variable "region" {
  default = "eu-west-1"
}

variable "amis" {
  type = map
  default = {
    "us-east-1" = "ami-062f7200baf2fa504"
    "us-east-2" = "ami-02ccb28830b645a41"
    "us-west-1" = "ami-03caa3f860895f82e"
    "us-west-2" = "ami-04590e7389a6e577c"
    "eu-west-1" = "ami-02df9ea15c1778c9c"
  }
}

variable "ec2_name" {
  type    = string
  default = "test"
}
