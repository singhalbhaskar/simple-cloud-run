module "three_tier_app_cache" {
  source                  = "github.com/terraform-google-modules/terraform-google-memorystore"
  project                 = var.project_id
  region                  = var.region
  name                    = var.three_tier_app_cache_name
  memory_size_gb          = var.three_tier_app_cache_memory_size_gb
  redis_version           = var.three_tier_app_cache_redis_version
  connect_mode            = var.three_tier_app_cache_connect_mode
  tier                    = var.three_tier_app_cache_tier
  transit_encryption_mode = var.three_tier_app_cache_transit_encryption_mode
}
