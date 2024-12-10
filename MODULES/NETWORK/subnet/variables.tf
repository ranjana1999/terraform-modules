variable "subnet_name"{
    type=string
}
variable "ip_range"{
    type=string
}
variable "subnet_region"{
    type=string
}
variable "vpc_self_link"{
    type=string
}
variable "secondary_ip_range"{
    type = map(string)
    default = {}
}
