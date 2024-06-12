variable "image_family" {
  type        = string
  description = "The family name of an image. Used to search the latest image in a family."
}

variable "instances_count" {
  type        = number
  description = "Number of instances"
}

variable "instance_name" {
  type        = string
  description = "Name of created virtual machine."
}

variable "allow_stopping_for_update" {
  type        = bool
  description = "Is it allowed to stop a VM instance to make changes"
}

variable "platform_id" {
  type        = string
  description = "The type of virtual machine to create."
}

variable "metadata" {
  type = object({ user-data=string })
  description = "Metadata for user creation."
}

variable "is_preemptible" {
  type        = bool
  description = "Is the instance preemptible."
}

variable "has_nat" {
  type        = bool
  description = "Is a public address provided."
}

variable "resources" {
  type        = object({ cores=number, memory=number, core_fraction=number })
  description = "Resources for instances"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnet IPs"
}
