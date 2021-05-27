resource "aws_nat_gateway" "gw" {
  allocation_id = aws_eip.one.id
  subnet_id     = aws_subnet.vpc2.id
}

resource "aws_eip" "one" {
  vpc = true
}


resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.two.id
  subnet_id     = aws_subnet.faruk.id
}

resource "aws_eip" "two" {
  vpc = true
}