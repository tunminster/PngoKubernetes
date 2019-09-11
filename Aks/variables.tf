variable "aks_name" {
  default="sl-tm-nonprod-cluster"
}
variable "aks_app_id" {
}
variable "aks_app_secret" {
  
}
variable "location" {
    default="westeurope"
}
variable "resource_group_name" {
    default="SL-TradeManagement-NonProd-WE-RG"
}
variable "tags" {  
  type        = "map"

  default = {    
    creator = "nitesh.soni@hitachiconsulting.com"
    serviceid = "SVC-000683"
  }
}



