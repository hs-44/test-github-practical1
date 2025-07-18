// aws_vpc : https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
// Argument Reference : https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc#argument-reference

resource "aws_vpc" "terraform_test_vpc" {
  # cidr_block           = 172.31.0.0/16
  cidr_block         = "172.31.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = false
 
  tags = {
    Name = "terraform_test_vpc_1"
  }
}
resource "aws_internet_gateway" "terraform_test_internet_gateway" {
  vpc_id = aws_vpc.terraform_test_vpc.id

  tags = {
    Name = "terraform_test_internet_gateway"
  }
}
resource "aws_internet_gateway" "terraform_test_internet_gateway" {
  vpc_id = aws_vpc.terraform_test_vpc.id

  tags = {
    Name = "terraform_test_internet_gateway"
  }
}

