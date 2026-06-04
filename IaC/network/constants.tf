# Define as availability zones

variable "av_zone_a" {
  type = map(any)

  default = {
    us-east-2 = "us-east-2a"
  }
}

variable "av_zone_b" {
  type = map(any)

  default = {
    us-east-2 = "us-east-2b"
  }
}
