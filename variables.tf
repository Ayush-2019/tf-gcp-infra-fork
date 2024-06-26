#variables.tf

variable "project_id" {
  type = string
  default = "dev-assignment4"
  description = "Project ID"
}

variable "region" {
  type = string
  default = "us-central1"
  description = "The region"
}

variable "auto_create_subnetworks" {
  type = bool
  default = false
  description = "Auto Create subnetworks"
}

variable "routing_mode" {
  type = string
  description = "routing mode of VPC"
  default = "REGIONAL"
}

variable "zone" {
  type = string
  description = "The zone of the resources"
  default = "us-central1-c"
}

variable "cidr1" {
  type = string
  description = "range 1"
  default = "10.0.1.0/24"
}
variable "cidr2" {
  type = string
  description = "range 2"
  default = "10.0.2.0/24" 
}

variable "route_name" {
  type = string
  description = "The name of the route"
  default = "route-1" 
}

variable "dest_range" {
  type = string
  description = "destination range"
  default = "0.0.0.0/0"
}

variable "vm_instance_name" {
  type = string
  description = "The name of the VM instance"
  default = "webapp-instance"
}

variable "machine_type" {
  type = string
  description = "The machine type of the VM instance"
  default = "n1-standard-1"
}

variable "image_name" {
  type = string
  description = "The name of the custom image"
  default = "myimage4"
}

variable "image_size" {
  default = "100"
}

variable "image_type" {
  default = "pd-standard"
}

variable "firewall_deny" {
  default = ["22"]
}

variable "firewall_allow" {
  default = ["3000", "8080"]
}

variable "tcp" {
  type = string
  default = "tcp"
  description = "name of tcp"
}

variable "udp" {
  type = string
  default = "udp"
  description = "name of udp"
  
}

variable "app_name" {
  type = string
  default = "webapp"
  description = "The name of the app"
  
}

variable "vpc" {
  description = "list of all vpc"
  type        = string
  default     = "new-vpc"
}

variable "db_name" {
  type = string
  default = "db"
  description = "name of db"
  
}

variable "gateway" {
  type = string
  default = "default-internet-gateway"
  description = "default-internet-gateway"
  
}

variable "firname" {
  type = string
  default = "allow-request"
  description = "name of firewall"
}

variable "firname2" {
  type = string
  default = "allow-request-lb"
  description = "name of firewall"
}

variable "deny_tcp" {
  type = string
  default = "deny-all"
  description = "name of deny firewall"
}

variable "disk_type" {
  type    = string
  default = "pd-ssd"
}

variable "disk_size" {
  type    = number
  default = 100
}

variable "ipv4_enabled" {
  type    = bool
  default = false
}

variable "private_network" {
  type    = string
  default = "YOUR_CUSTOM_VPC"
}

variable "availability_type" {
  type    = string
  default = "REGIONAL"
}

variable "azone" {
  type    = string
  default = "app domain" 
}

variable "ztype" {
  type    = string
  default = "A" 
}

variable "ttl" {
  type    = number
  default = 300  
}

variable "zone_name" {
  type    = string
  default = "webapp-zone"
}

variable "service_email" {
  type    = string
  default = "service-account-1@dev-assignment4.iam.gserviceaccount.com"
}

variable "monitoring_role" {
  type    = string
  default = "roles/monitoring.metricWriter" 
}

variable "logging_role" {
  type    = string
  default = "roles/logging.admin"
}

variable "vm_service_roles" {
  type    = list(string)
  default = ["logging-write","monitoring-read","monitoring-write","pubsub"]
  
}

variable "service_id" {
  type    = string
  default = "service-account-1" 
}

variable "service_display_name" {
  type    = string
  default = "service-account-1"
}

variable "database_name" {
  type    = string
  default = "webapp"
  
}

variable "database_user" {
  type    = string
  default = "webapp" 
}

variable "db_instance_tier" {
  type    = string
  default = "db-n1-standard-1"
}

variable "db_instance_version" {
  type    = string
  default = "MYSQL_8_0"
}

variable "db_instance_name" {
  type    = string
  default = "db-instance"
}

variable "rm_len" {
  type    = number
  default = 8
}

variable "rm_special" {
  type = bool
  default = false
}

variable "function_api_key" {
  type = string
  default = "confidential key"
}

variable "function_domain" {
  type = string
  default = "ayush-kiledar-webapp.me"
  
}

variable "balancing_mode" {
  type = string
  default = "UTILIZATION"
  
}

variable "port_name" {
  type = string
  default = "app"
  
}

variable "load_balancing_scheme" {
  type = string
  default = "EXTERNAL"
  
}

variable "google-backend-name" {
  type = string
  default = "lb-backend-service"
  
}

variable "google-url-name" {
  type = string
  default = "url-map"
  
}

variable "target_https_proxy" {
  type = string
  default = "webapp-target-http-proxy"
  
}

variable "lb_forwarding_rule" {
  type = string
  default = "lb-forwarding-rule"
  
}

variable "lb_static_ip" {
  type = string
  default = "lb-static-ip"
  
}

variable "cidr3" {

  type = string
  default = "10.129.0.0/23"
  
}

variable "cpu_utilization" {
  type = number
  default = 0.05
  
}

variable "vm_max_replicas" {
  type = number
  default = 6
  
}

variable "distribution_policy_zones" {
  type = list(string)
  default = ["us-central1-a", "us-central1-f"]
  
}

variable "vm_min_replicas" {
  type = number
  default = 3
  
}

variable "compute_agent_account" {
  type = string
  default = "service-450277584514@compute-system.iam.gserviceaccount.com"
  
}

variable "sqlidentity_name" {
  type = string
  default = "sqladmin.googleapis.com"
  
}

variable "storage_account" {
  type = string
  default = "service-450277584514@gs-project-accounts.iam.gserviceaccount.com"
}

variable "bucket_key_name" {
  type = string
  default = "bucket-key"
  
}

variable "rotation_period" {
  type = string
  default = "2592000s"
  
}

variable "db_key_name" {
  type = string
  default = "db-key"
  
}

variable "vm_key_name" {
  type = string
  default = "vm-key"
  
}

variable "lb_subnet_name" {
  type = string
  default = "lb-subnet"
  
}

variable "ssl_name_webapp" {
  type = string
  default = "webapp-ssl"
}

variable "keyring_name" {
  type = string
  default = "webapp-keyring7"
  
}
