############################   pubic server ################
resource "aws_instance" "public-project" {
    ami = "ami-0d682f26195e9ec0f"
    instance_type = "t2.micro"
    key_name = "mumbai-key"
        tags = {
      Name = "EC2-Server-public"
    }
    availability_zone = "ap-south-1a"
    subnet_id = aws_subnet.public-subnet.id
    vpc_security_group_ids = [aws_security_group.project.id]
  #  associate_public_ip_address = true
}

################## private server ##############
resource "aws_instance" "private-project" {
    ami = "ami-0d682f26195e9ec0f"
    instance_type = "t2.micro"
    key_name = "mumbai-key"
        tags = {
      Name = "EC2-Server-private"
    }
    availability_zone = "ap-south-1a"
    subnet_id = aws_subnet.private-subnet.id
    vpc_security_group_ids = [aws_security_group.project.id]
    # associate_public_ip_address = true
}
############################## vpc endpoint #####################
resource "aws_ec2_instance_connect_endpoint" "example" {
  subnet_id = aws_subnet.public-subnet.id
  tags = {
     Name = "ec2-instance-connect-endpoint"
   }
}
