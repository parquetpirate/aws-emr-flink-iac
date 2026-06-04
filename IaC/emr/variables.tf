# Variables

# Definition of the 'project' variable
variable "project" {

}

# Definition of the 'environment' variable
variable "environment" {

}

# Definition of the 'tags' variable
variable "tags" {

}

# Definition of the 'key_name' variable
variable "key_name" {

}

# Definition of the 'vpc_id' variable
variable "vpc_id" {

}

# Definition of the 'public_subnet' variable
variable "public_subnet" {

}

# Definition of the 'additional_security_group_id' variable
variable "additional_security_group_id" {

}

# Definition of the 'release_label' variable
variable "release_label" {

}

# Definition of the 'applications' variable
variable "applications" {

}

# Definition of the 'main_instance_type' variable
variable "main_instance_type" {

}

# Definition of the 'core_instance_type' variable
variable "core_instance_type" {

}

# Definition of the 'core_instance_count' variable
variable "core_instance_count" {

}

# Definition of the 'core_instance_ebs_volume_size' variable with default value
variable "core_instance_ebs_volume_size" {
  default = "80"
}

# Definition of the 'security_configuration_name' variable with default null
variable "security_configuration_name" {
  default = null
}

# Definition of the 'log_uri' variable with default value
variable "log_uri" {
  default = "s3://projeto1-463032375612"
}

# Definition of the 'configurations' variable with default null
variable "configurations" {
  default = null
}

# Definition of the 'steps' variable with complex type and default null
variable "steps" {
  type = list(object(
    {
      name              = string
      action_on_failure = string
      hadoop_jar_step = list(object(
        {
          args       = list(string)
          jar        = string
          main_class = string
          properties = map(string)
        }
      ))
    }
  ))
  default = null
}

# Definition of the 'bootstrap_action' variable with empty default value
variable "bootstrap_action" {
  type = set(object(
    {
      name = string
      path = string
      args = list(string)
    }
  ))
  default = []
}

# Definition of the 'kerberos_attributes' variable with empty default value
variable "kerberos_attributes" {
  type = set(object(
    {
      kdc_admin_password = string
      realm              = string
    }
  ))
  default = []
}
