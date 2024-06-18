bucket_name = "dev-proj-1-remote-state-bucket"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-central-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
eu_availability_zone = ["ap-southeast-1a", "ap-southeast-1b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDqwRN5tUPVWurmk8cAxCtWbGAEA2bH+eeSvGJ5lW68ishfCMeCeie5LYnO3N+4/loDfd9OoSP1XnbFGQ0dxwQxlpH1ViFcg6oe4L9dO867IhkV5pjkRgvaXAwQlUn2LHfIfLo0b1fWiJ1zH9JGbu7Evg2PHQcvl8lp6NtdBNV3yT6tSeo/VdwNNJIb3iprmRb1eVb95vdggaZpKktiTJrO7G8pvxE8s0x+8VK8cI5c6bYGr5Yr8LMz8eeiDZHRiiwQLlvI4Rctl8KEy+BJ7ZgyHJzIIwnccAovOgyI0O6ZDUlGIYk1wc4JAgYO9T0aamTMMLpX2KQPuqobf0JqvPqo2pl761l6+FD93kh6+cP1qiZvZPhLqNuxeeR9q71e3ZuVIqcNeBxfGNWVE6yOsJXBxH6c2xk0XbnRfSnYilDqhjzzObPynoH/AhRrqSBZyg7C5QNY3NlUa1+c28j+pZXQJA/1KY42Jyki1S7DRhTGpWV9EkPn5BKGBn/XBE2Dxek= sithukyawtint@GuGu.local"
ec2_ami_id     = "ami-080660c9757080771"

ec2_user_data_install_apache = ""

domain_name = "server-nocnum.com"