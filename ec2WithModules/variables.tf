variable "AWS_REGION" {
    type    = string
    default = "eu-west-1"
}
variable "ami" {
    type    = string
    default = ""
}
variable "instance_type" {
    type    = string
    default = ""
}
variable "subnet_id" {
    type    = string
    default = ""
}
variable "associate_public_ip_address" {
    type= bool
    default = false
}

variable "vpc_security_group_ids" {
    type    = list
    default = []
}
variable "key_name" {
    type    = string
    default = ""
}
variable "PATH_TO_PRIVATE_KEY" {
    type    = string
    default = ""
}
variable "PATH_TO_PUBLIC_KEY" {
    type    = string
    default = ""
}
variable "INSTANCE_USERNAME" {
    type    = string
    default = ""
}
variable "instanceName" {
    type    = string
    default = ""
}