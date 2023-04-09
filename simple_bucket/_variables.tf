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

variable "bucket_policy"{
  type = string
}

variable "acl" {
  type        = string
  default     = "private"
  description = "Default ACL type"
}
