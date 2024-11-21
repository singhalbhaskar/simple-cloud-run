# Root level variables, no prefix of module name
variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "region" {
  type        = string
  description = "GCP Region"
}

# Variables for module three_tier_app_cache
variable "three_tier_app_cache_name" {
  type        = string
  description = "Redis instance name"
}

variable "three_tier_app_cache_redis_version" {
  type        = string
  description = "The version of Redis software"
}

variable "three_tier_app_cache_memory_size_gb" {
  type        = number
  default     = 1
  description = "Redis memory size in GiB"
}

variable "three_tier_app_cache_connect_mode" {
  type    = string
  default = null
}

variable "three_tier_app_cache_tier" {
  type    = string
  default = "STANDARD_HA"
}

variable "three_tier_app_cache_transit_encryption_mode" {
  type    = string
  default = "SERVER_AUTHENTICATION"
}
