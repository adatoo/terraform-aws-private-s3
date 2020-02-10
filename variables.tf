variable "tags" {
  description = "Default tags assigned to each resource"
  type        = map
  default     = {}
}

variable "bucket_name" {
  description = "Bucket name"
  type        = string
}

variable "block_public_acls" {
  description = "Block public access for new ACLs"
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Block public access for new bucket policies"
  type        = bool
  default     = true
}

variable "ignore_public_acls" {
  description = "Block public access for any ACLs"
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "Block public access for any bucket policies"
  type        = bool
  default     = true
}
