resource "aws_instance" "project" {
    ami = "ami-0d682f26195e9ec0f"
    instance_type = "t2.micro"
    key_name = "mumbai-key"
        tags = {
      Name = "EC2-Server"
    }
    subnet_id = aws_subnet.project.id
    vpc_security_group_ids = [aws_security_group.project.id]
    associate_public_ip_address = true 
}