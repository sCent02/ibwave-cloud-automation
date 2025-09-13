provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "ibwave" {
  ami           = "ami-xxxxxxxx" # Windows AMI with GPU support
  instance_type = "g4dn.xlarge"  # GPU for RF simulations
  key_name      = var.key_name

  tags = {
    Name = "ibwave-simulation"
  }
}