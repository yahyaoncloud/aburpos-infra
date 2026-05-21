# modules/security-group/outputs.tf

output "security_group_id" {
  value = aws_security_group.ec2_sg.id
}