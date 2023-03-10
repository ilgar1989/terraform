variable "ingress_ports" {
  type    = list(any)
  default = [8000, 8200, 8500, 9000, 9200, 8888, 9999]
}

variable "egress_ports" {
  type    = list(any)
  default = [3000, 3100, 3200, 3300, 3400, 4500, 1111, 1212, 1313, 1515, 1414, 1616, 1818, 1717]
}

resource "aws_security_group" "dynamic-sg" {
  name = "devops14-dynamic-sg"
  dynamic "ingress" {
    for_each = var.ingress_ports
    #    iterator = port
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  dynamic "egress" {
    for_each = var.egress_ports
    #    iterator = port
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
