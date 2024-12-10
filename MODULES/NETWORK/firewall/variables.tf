variable "fw_rules"{
    type=map(object({
        protocol =string
        ports =list(string)      
        target_tags =list(string)
        source_ranges =list(string)
    }))
}
variable "vpc"{
    type=string
}
/*variable "protocol"{
    
}
variable "port"{
    type=list(string)
}
variable "tag"{
    type=list(string)
}
variable "source_ranges"{
    type=list(string)
}*/
