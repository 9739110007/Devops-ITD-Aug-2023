resource "null_resource" "name" {
    connection {
      type = "ssh"
      host = var.ec2_public_ip
      user = var.ec2_username
      private_key = file(var.ec2_pem)
      agent = false
    }
    provisioner "file" {
        source = var.source_path
        destination = var.destination_path
    }
}
