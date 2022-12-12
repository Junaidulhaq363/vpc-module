
variable "cidr_block" {
    type        = string
    description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
}
variable "secondary_cidr_blocks" {
    type        = list
    description = "The list of secondary CIDR blocks for the VPC. Default value is an empty list wherein only primary CIDR will be attached with the VPC"
}
variable "enable_dns_hostnames" {
    type        = bool
    description = "A boolean flag to enable/disable DNS hostnames in the VPC"
}
variable "tags" {
    type        = map(string)
    description = "A map of tags to add to all resources"
}
variable "enable_dns_support" {
    type        = bool
    description = "A boolean flag to enable/disable DNS support in the VPC"
}
