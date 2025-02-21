resource "aws_instance" "name" {
    ami = "ami-0ddfba243cbee3768"
    instance_type = "t2.micro"
    key_name = "mumbai-key"
    availability_zone = "ap-south-1b"
    tags = {
      Name = "EC2-Server"
    }
}