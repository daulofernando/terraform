data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"] # id do ubuntu na aws
}

# data "aws_ami" "ubuntu-west" {
#   provider = aws.west
#   most_recent = true 
#   filter {
#       name = "name"
#       values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }
#   owners = ["099720109477"] # id do ubuntu na aws
# }

resource "aws_instance" "web" {
  count         = var.servers
  for_each = { # cria o laço
    "dev" = "t2.micro"
    "staging" = "t3.micro"
  }
  ami           = data.aws_ami.ubuntu.id
  instance_type = each.value # usa os valores do for each acima, para criar as instancias
  tags = {
    Name = "HelloWorld"
  }
}