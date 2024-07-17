resource "aws_instance" "Terraform_Test_Instance" {
  ami                    = var.AMI[var.REGION]
  instance_type          = var.instance_type
  key_name               = var.key
  vpc_security_group_ids = var.Security_Group
  tags = {
    Name = "Terraform_Test_Instance"
  }
  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  connection {
      type        = "ssh"
      user        = "ubuntu" 
      private_key = file("terraformKey.pem") 
      host        = self.public_ip
    }

  provisioner "remote-exec" {
    inline = [
      "ls -l /tmp",
      "file /tmp/web.sh",
      "dos2unix /tmp/web.sh", # Convert line endings to Unix format
      "chmod +x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]

    connection {
      type        = "ssh"
      user        = "ubuntu" 
      private_key = file("terraformKey.pem") 
      host        = self.public_ip
    }
}
}

output "instance_ip" {
  value = aws_instance.Terraform_Test_Instance.public_ip
}

