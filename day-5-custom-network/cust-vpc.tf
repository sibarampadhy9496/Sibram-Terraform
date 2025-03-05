resource "aws_vpc" "project" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "cust-vpc"
    }
}
resource "aws_internet_gateway" "project" {
    vpc_id = aws_vpc.project.id
    tags = {
      Name = "cust-ig"
    }
}
resource "aws_subnet" "project" {
    vpc_id = aws_vpc.project.id
     cidr_block = "10.0.0.0/24"
     map_public_ip_on_launch = true
    tags = {
      Name = "public-subnet"
      
    }
}
  
resource "aws_route_table" "project" {
    vpc_id = aws_vpc.project.id
    tags = {
      Name = "publuc-rt"
    }
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.project.id
    }
    
}
  
resource "aws_route_table_association" "project" {
    route_table_id = aws_route_table.project.id
    subnet_id = aws_subnet.project.id
}
  
resource "aws_security_group" "project" {
    vpc_id = aws_vpc.project.id
    description = "allow ssh and http"
    name = "cust-sg"
    
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0"]

    }
     ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0"]
        
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
  
