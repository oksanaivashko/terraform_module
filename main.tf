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