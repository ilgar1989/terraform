variable "env" {
}

resource "aws_instance" "dev" {
  ami           = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
  count         = var.env == true ? 3 :1
}

resource "aws_instance" "prod" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"
  count         = var.env == false ? 1 : 2
}
