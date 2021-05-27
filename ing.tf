resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main"
  }
}


resource "aws_internet_gateway" "faruk" {
  vpc_id = aws_vpc.faruk.id

  tags = {
    Name = "faruk"
  }
}
output "main" {
  value = aws_internet_gateway.main.id
}

output "faruk" {
  value = aws_internet_gateway.faruk.id

}