terraform {
  required_version = ">= 0.12"
  }
  

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

#resource "aws_key_pair" "deployer" {
#  key_name   = "glong2"
#  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDbYYxL2r9sf0vmQoxaPzLk6/fhJP6fGxZ725IANEByJvCrTaSsYHf0rbG5PLrjygOeopZYnVggQA2MD2LvIykQb0JCoi2WuXwhRk75FrxClm+g0Y31TGhzTkt610d1bF90UAZdSvKpuIqYxJZVwn7mHr2vnr2ne3O9H4bwYdn3KR+zFIDo2c310s/Aqnj5Ft4URDf1Iu5t+CBhSHJhmFKmGBe7EFVJQc7a9bYAiNhPgcvS0FoHCoCA9e5YTbYgFzSuSCzIW7YUwOmY+F5l9ajv7l+8OMcTfmIryUPXO7xPKCyGGjU19cWyCdxOeHOW4rXn/D3F4vqVvtaAdS8LwhfR glong2@example.com"
#}


resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  key_name = "tftest"
  security_groups = [ "launch-wizard-1" ]
  tags = {
      Name = var.instance_name
  }


}
