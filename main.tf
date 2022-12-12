

resource "aws_vpc" "vpc_main" {
    cidr_block           = var.cidr_block
    enable_dns_hostnames = var.enable_dns_hostnames
    enable_dns_support   = var.enable_dns_support
    tags                 = var.tags
}

resource "aws_vpc_ipv4_cidr_block_association" "this" {
  count = length(var.secondary_cidr_blocks) > 0 ? length(var.secondary_cidr_blocks) : 0
  vpc_id = aws_vpc.vpc_main.id
  cidr_block = element(var.secondary_cidr_blocks, count.index)
}
