#     _____                           _ 
#    / ____|                         | |
#   | |  __  ___ _ __   ___ _ __ __ _| |
#   | | |_ |/ _ \ '_ \ / _ \ '__/ _` | |
#   | |__| |  __/ | | |  __/ | | (_| | |
#    \_____|\___|_| |_|\___|_|  \__,_|_|
#                                       
#          

data "aws_caller_identity" "current" {}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "Default region"
}

variable "profile" {
  type        = string
  default     = null
  description = "Default AWS profile"
}


#     _____ ____  
#    / ____|___ \ 
#   | (___   __) |
#    \___ \ |__ < 
#    ____) |___) |
#   |_____/|____/ 
#                 
#              

variable "bucket_name" {
  type        = string
  default     = "terraform-tfstates"
  description = "Default region"
}

variable "object_lock_enabled" {
  type        = bool
  default     = true
  description = "Object Lock Configuration"
}

variable "versioning" {
  type        = string
  default     = "Enabled"
  description = "Versioning [Enabled Suspended Disabled]"
}

variable "public_acls" {
  type = map(bool)
  default = {
    block_public_acls       = true
    block_public_policy     = true
    ignore_public_acls      = true
    restrict_public_buckets = true
  }
}

variable "acl" {
  type        = string
  default     = "private"
  description = "Default ACL type"
}

#    _____          __  __ 
#   |_   _|   /\   |  \/  |
#     | |    /  \  | \  / |
#     | |   / /\ \ | |\/| |
#    _| |_ / ____ \| |  | |
#   |_____/_/    \_\_|  |_|
#                          
#                          

variable "path" {
  type        = string
  default     = "/"
  description = "Default IAM Path"
}

#this_bucket Policy
variable "this_bucket_name" {
  type        = string
  default     = "tfstates_bucket"
  description = "Policy name"
}

variable "this_bucket_description" {
  type    = string
  default = "Policy for tfstates bucket"
}