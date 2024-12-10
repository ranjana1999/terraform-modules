project_id ="cranjana"
vpcname = "ranjana"
subnet_name = "ranjana-eu-subnet"
ip_range = "10.3.0.0/24"  
subnet_region = "europe-north1"
/*
fw_rules = {
    "allow-iap" = {
    protocol = "tcp"
    ports = ["22"]
    target_tags = ["iap-fw"]
    source_ranges=["35.235.240.0/20"]
    },
    "allow-http" = {
        protocol = "tcp"
        ports = ["80"]
        target_tags = ["http-fw"]
        source_ranges = ["0.0.0.0/0"]
    }  
}*/
/*vm_name = "flask-vm"
machine_type  = "e2-medium"
vm_zone = "europe-north1-b"
vm_image = "debian-cloud/debian-11"
startup_script = "startup-script.sh"*/
#fw_name = "allow-iap"
#machine_type="e2-medium"
#tags=["iap-fw","http-fw"]
/*template_network="ranjana"
template_subnetwork="ranjana-eu-subnet"
startup_file_path="startup-script.sh"
source_image = "debian-cloud/debian-11"
template_name = "mig-template-flask"
mig_name = "app-mig"
instance_group_zone = "europe-north1-b"
base_instance_name = "web-app"
target_size = 2*/

