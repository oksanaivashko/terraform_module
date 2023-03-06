# Terraform consist of child and root module 
# 1. Child module = declare the resource
# 2. Root module where you run terraform command.
# 
# Root mosule = call the child module 
# Root module where you run the command, create working directory.
# Local  module = moved is in your filesystem
# Terraform module to manage multiple environment and infrastrucutre. 
# You make your code reusuble. 

module "ec2_instance" {
  source = "../../modules/ec2" # where terraform child is sitting


########################## Varialbes ###########################

  env = "dev"
  ami = "ami-0f1a5f5ada0e7da53"
  instance_type = "t2.micro"
  sg = [module.ec2_sg.main_sg_id]
}

module "ec2_sg" {
  source = "../../modules/sg"
  env = "dev"

}

# how to reference to child module? 
# you only can refference to child module output