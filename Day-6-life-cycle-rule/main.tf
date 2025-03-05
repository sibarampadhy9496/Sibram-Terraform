resource "aws_instance" "name" {
    ami = "ami-0d682f26195e9ec0f"
    availability_zone = "ap-south-1b"
    key_name = "mumbai-key"
    instance_type = "t2.micro"  
    tags = {
      Name = "pub-ec2"
    }

# lifecycle {    
#     ignore_changes = [tags, instance_type, ami etc]
# }
lifecycle {
create_before_destroy = false

}

}