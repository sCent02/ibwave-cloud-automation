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

# S3 Bucket for Project Input/Output
resource "aws_s3_bucket" "ibwave_bucket" {
  bucket = "ibwave-simulation-projects"
  acl    = "private"

  tags = {
    Name = "ibwave-s3-storage"
  }
}