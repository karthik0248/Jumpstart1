provider "aws" {
 profile = "default"
 region = "ap-south-1"
}

resource "aws_instance" "myec2" {
  ami = "ami-0e306788ff2473ccb" 
  instance_type = "t2.micro"
  subnet_id = "subnet-b32b1fdb"
  security_groups = ["sg-02f7016b8fe374067"] 
  key_name = "k"
  tags = {
     Name = "jumpstart"
   }
}
