variable "region" {
  type = string
  default = "us-west-2"
  description = "region in which olvpc has to be created"

}
variable "vpc_cidr" {
    cidr_block= "192.168.0.0/16"
  
}