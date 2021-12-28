variable "region" {
  type = string
  default = "us-west-1"
  description = "region in which olvpc has to be created"

}
variable "vpccidr" {
    type = string
    default= "192.168.0.0/16"
    description = "default cidr block of olvpc"
}