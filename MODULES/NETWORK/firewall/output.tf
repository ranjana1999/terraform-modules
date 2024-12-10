output "target_tags"{
    value= {for k,v in var.fw_rules:k => v.target_tags}
}
output "fw_names"{
    value = [for firewall in google_compute_firewall.firewall:firewall.name]
}
output "tags"{
    value=distinct(flatten([for rule in values(var.fw_rules):rule.target_tags]))
}