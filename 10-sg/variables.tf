variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "sg_names" {
  default = [
    #Database SGs
    "mongodb", "redis", "mysql", "rabbitmq",
    
    #Backend SGs
    "catalogue", "cart", "user", "shipping", "payment",

    #Frontend SGs
    "frontend",

    #Bastion SGs
    "bastion",
    #frontend load balancer SGs
    "frontend_lb",

    #backend App load balancer SGs
    "backend_alb"
    ]  
}