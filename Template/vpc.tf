module "vpc" {
    source = "../MODULES/NETWORK/vpc" 
    vpc_name=var.vpcname
    
}

/*module "firewall"{
    source="../Terraform/modules/firewall"
    vpc=module.vpc.vpc_self_link
    fw_rules=var.fw_rules

}*/
/*module "web_vm"{
    source="../Terraform/modules/public_vm"
    name=var.vm_name
    machine_type = var.machine_type  
    zone=var.vm_zone
    image = var.vm_image
    network = module.vpc.vpc_self_link
    subnetwork = module.subnet.subnet_self_link
    tags = module.firewall.tags
    startup_script_path = var.startup_script
}*/

/*module "instance_template"{
    source="../Terraform/modules/instance-template"
    template_name=var.template_name
    machine_type=var.machine_type
    tags=module.firewall.tags
    network=module.vpc.vpc_self_link
    source_image = var.source_image
    subnetwork = module.subnet.subnet_self_link
    startup_file_path=var.startup_file_path
}
module "instance_group"{
    source="../Terraform/modules/mig"
    mig_name=var.mig_name
    instance_group_zone=var.instance_group_zone
    base_instance_name=var.base_instance_name
    instance_template=module.instance_template.instance-template-self_link
    target_size=var.target_size
}*/
