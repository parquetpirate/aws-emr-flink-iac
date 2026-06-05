# Security Groups

# Security group resource definition for the EMR main (master) node
resource "aws_security_group" "main_security_group" {

  # Security group name
  name = "${var.project}-emr-security-group-${var.environment}"

  # Security group description
  description = "Allow inbound traffic for EMR main node."

  # VPC ID where the security group will be created
  vpc_id = var.vpc_id

  # Tags associated with the security group
  tags = var.tags

  # Option to revoke security rules when deleting the security group
  revoke_rules_on_delete = true

  # Inbound rule to allow SSH traffic (port 22) from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound rule to allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


# Security group resource definition for the EMR core (worker) nodes
resource "aws_security_group" "core_security_group" {

  # Security group name
  name = "${var.project}-emr-core-security-group-${var.environment}"

  # Security group description
  description = "Allow inbound outbound traffic for EMR core nodes."

  # VPC ID where the security group will be created
  vpc_id = var.vpc_id

  # Tags associated with the security group
  tags = var.tags

  # Option to revoke security rules when deleting the security group
  revoke_rules_on_delete = true

  # Inbound rule to allow all internal traffic within the security group itself
  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    self      = true
  }

  # Outbound rule to allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
