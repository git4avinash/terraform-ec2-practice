variable "ami_id" {
  default = "ami-0c55b159cbfafe1f0" # change as per region
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_name" {
  default = "dev-ec2"
}
