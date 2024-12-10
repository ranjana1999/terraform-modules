/*resource "google_compute_subnetwork" "subnet"{
    name=var.subnet_name
    ip_cidr_range = var.ip_range
    region = var.subnet_region
    network = var.vpc_self_link
}*/
/*locals{
    base_cidr="10.0.0.0/16"
    subnet_count=8
    #extract prefix length from CIDR block
    prefix_length=tonum(element(split("/",local.base_cidr),1))
    newbits=ceil(log2(local.subnet_count))
}
resource "google_compute_subnetwork" "subnets"{
    count = local.subnet_count
    name = "subnet-${count.index + 1}"
    ip_cidr_range=cidrsubnet(local.base_cidr,local.newbits,count)
}*/
resource "google_compute_subnetwork" "subnets"{
    name=var.subnet_name
    ip_cidr_range = var.ip_range
    region = var.subnet_region
    network = var.vpc_self_link  
    dynamic "secondary_ip_range" {
        for_each = length(var.secondary_ip_range)>0?var.secondary_ip_range : {}
        content{
            range_name = each.key
            ip_cidr_range = each.value
        }    
  } 
}