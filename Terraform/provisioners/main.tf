module "create_pem" {
    source = "./modules/create_pem"
    key_name = var.root_key_name
    key_path = var.root_key_path
}

module "create_sg" {
    source = "./modules/create_sg"
    sg_name = var.root_sg_name
}

module "create_ec2" {
    source = "./modules/create_ec2"
    instance_type = var.root_instance_type
    pem_key_name = module.create_pem.pem_key
    sg_id = module.create_sg.sg_id
}

module "file_provisioner" {
    source = "./modules/file_provisioner"
    ec2_public_ip = module.create_ec2.public_ip
    ec2_username = var.root_ec2_username
    ec2_pem = var.root_key_path
    source_path = var.root_source_path
    destination_path = var.root_destination_path
}