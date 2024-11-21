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

# Variables for module three_tier_app_database
variable "three_tier_app_database_db_name" {
  type        = string
  description = "Database name"
}

variable "three_tier_app_database_name" {
  type        = string
  description = "Database instance name"
}

variable "three_tier_app_database_database_version" {
  type        = string
  description = "Database version"
}

variable "three_tier_app_database_database_flags" {
  type    = list(object({ name : string, value : string }))
  default = []
}

variable "three_tier_app_database_disk_size" {
  type        = number
  default     = 10
  description = "The size of data disk in GB"
}

variable "three_tier_app_database_ip_configuration" {
  type = object({ ipv4_enabled : bool })
}

variable "three_tier_app_database_deletion_protection" {
  type    = bool
  default = true
}

variable "three_tier_app_database_user_deletion_policy" {
  type    = string
  default = null
}

variable "three_tier_app_database_database_deletion_policy" {
  type    = string
  default = null
}

variable "three_tier_app_database_enable_default_user" {
  type    = bool
  default = true
}

# Variables for module three_tier_app_backend
variable "three_tier_app_backend_service_name" {
  type        = string
  description = "Backend cloud Run service name"
}

variable "three_tier_app_backend_members" {
  type    = list(string)
  default = []
}

variable "three_tier_app_backend_template_scaling" {
  type = object({ max_instance_count : number })
}


variable "three_tier_app_backend_containers" {
  type = list(object({ container_image : string, ports : object({ container_port : number }), env_vars: map(string) }))
}

variable "three_tier_app_backend_vpc_access" {
  type = object({
    connector = optional(string)
    egress    = optional(string)
    network_interfaces = optional(object({
      network    = optional(string)
      subnetwork = optional(string)
      tags       = optional(list(string))
    }))
  })
}

variable "three_tier_app_backend_service_account_project_roles" {
  type    = list(string)
  default = []
}

# Variables for module three_tier_app_frontend
variable "three_tier_app_frontend_service_name" {
  type        = string
  description = "Cloud Run service name"
}

variable "three_tier_app_frontend_members" {
  type    = list(string)
  default = []
}

variable "three_tier_app_frontend_containers" {
  type = list(object({ container_image : string, ports : object({ container_port : number }) }))
}
