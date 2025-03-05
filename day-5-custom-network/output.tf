output "public_ip" {
    value = aws_instance.project.public_ip
    sensitive = false
}
  
output "private_ip" {
    value = aws_instance.project.private_ip
    sensitive = false
}
  

  

