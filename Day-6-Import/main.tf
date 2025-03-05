resource "aws_instance" "name" {
    ami = "ami-0d682f26195e9ec0f"
    availability_zone = "ap-south-1b"
    key_name = "mumbai-key"
    instance_type = "t2.micro"  
    tags = {
      Name = "pub-ec2"
    }
}

##### how to run import command " terraform import aws_instance.name <instance-id>" #####