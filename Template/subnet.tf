module "subnet" {
    source="../MODULES/NETWORK/subnet"
    subnet_name=var.subnet_name
    ip_range=var.ip_range
    subnet_region=var.subnet_region
    vpc_self_link=module.vpc.vpc_self_link
}