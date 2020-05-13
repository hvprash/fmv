################################################################################
# outputs

#output "subnet_cidr_blocks" {
#  value = [for s in data.aws_subnet.subnet : s]
#}

output "server_public_ip" {
  value = {
    for instance in aws_instance.hashistack:
      instance.id => instance.public_ip
  }
}

// output "client_public_ip" {
//   value = {
//     for instance in aws_instance.client:
//       instance.id => instance.public_ip
//   }
// }

output "ssh_key_name" {
  value = aws_key_pair.ssh.key_name
}
