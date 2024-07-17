variable "REGION" {
  default = "us-east-1"
}

variable "AMI" {
  type = map(any)
  default = {
    us-east-1 = "ami-04a81a99f5ec58529"
    us-east-2 = "ami-04a81a99f5ec58529"
  }
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key" {
  default = "terraformKey"
}

variable "Security_Group" {
  default = ["sg-0ff75a515c4fb79e5"]
}