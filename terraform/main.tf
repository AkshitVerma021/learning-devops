resource "aws_instance" "web" {
  ami                     = "ami-0af9569868786b23a"
  instance_type = "t2.micro"
  key_name               = "test-workflow" 
  security_groups =       [ "launch-wizard-1" ]
  tags = {
    Name = "test-workflow-27"
  }
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.web.id
  allocation_id = "eipalloc-0fe66961f8aa2a5bd"
}