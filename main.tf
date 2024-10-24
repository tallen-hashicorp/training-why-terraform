# Define the provider
provider "aws" {
  region = "us-west-2" # Change this to your desired region
}

# Define the EC2 instance
resource "aws_instance" "my_instance" {
  ami           = "ami-0b8c6b923777519db" # Ubuntu 22.04 LTS in us-west-2 (you can change this)
  instance_type = "t2.micro"

  tags = {
    Name = "My-EC2-Instance"
  }
}

# Output the public IP of the instance
output "instance_public_ip" {
  value = aws_instance.my_instance.public_ip
}
