# outputs produced at the end of a terraform apply: id of the INSTANCE
output "ec2_id_out" {
    value = ["${aws_instance.ec2.*.id}"]
}