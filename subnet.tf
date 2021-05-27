resource "aws_subnet" "vpc2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }



}
output "arn" {
  value = [
    aws_vpc.main.arn,
    aws_vpc.main.id,
    aws_vpc.main.cidr_block,
    aws_vpc.main.instance_tenancy
  ]

}

