provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA4MM3WOZSSN4DDVUB"
  secret_key = "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"
}

resource "aws_vpc" "development-vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "dev-subnet-1" {
  vpc_id            = aws_vpc.development-vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-west-2a"

}
