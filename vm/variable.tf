variable "project" {
  description = "project name"
  default     = {}
}

variable "region" {
  description = "compute instance region"
  default     = {}
}

variable "zone" {
  description = "compute instance zone"
  default     = {}
}

variable "num_of_servers" {
  description = "required number of servers"
  # type        = list(string)
  default     = {}
}

variable "machine_type" {
  description = "type of machine"
  default     = {}
}

variable "labels" {
  description = "name of the labels which are associated to server"
  # type        = map(string)
  default = {
    # ams_id        = "07224"
    # application   = "web"
    # environment   = "poc"
    # creation_date = "30-03-2022"
    # region        = "east"
  }
}

variable "type" {
  description = "type of os disk"
  default     = {}
}

variable "image_name" {
  description = "operating system image   See: https://cloud.google.com/compute/docs/images#os-compute-support"
  default     = {}
}

variable "size" {
  description = "size of os disk"
  default     = {}
}

variable "subnetwork" {
  description = "date of resource creation"
  default     = {}
}

variable "subnetwork_project" {
  description = "date of resource creation"
  default     = {}
}

variable "vm_service_acct" {
  description = "(OPTIONAL) The e-mail address of the service account to attach to the instance"
  default     = {}
}

variable "reg" {
  description = "compute instance region"
  default     = {}
}

variable "ams_id" {
  description = "Project AMS ID"
  default     = {}
}

variable "os" {
  description = "Name of the os flavour"
  default     = {}
}


variable "server_role" {
  description = "Name of the application"
  default     = {}
}

variable "environment" {
  description = "Name of the environment"
  default     = {}
}

variable "env" {
  description = "Name of the env"
  default     = {}
}

variable "date" {
  description = "date of resource creation"
  default     = {}
}
