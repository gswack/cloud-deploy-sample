output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.cloud-deploy.id
}

output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.cloud-deploy.public_ip
}

output "instance_public_dns" {
  description = "The public DNS name of the EC2 instance"
  value       = aws_instance.cloud-deploy.public_dns
}
