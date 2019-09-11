resource "azurerm_kubernetes_cluster" "dixi-aks" {
    name                    = "${var.aks_name}"
    location                = "${var.location}"
    resource_group_name     ="${var.resource_group_name}"
    dns_prefix              = "${var.aks_name}-dns"

    agent_pool_profile{
        name                = "default"
        count               = 3
        vm_size             = "Standard_D1_v2"
        os_type             = "Linux"
        os_disk_size_gb     = 30
    }

    service_principal{
        client_id           ="${var.aks_app_id}"
        client_secret       = "${var.aks_app_secret}"
    }

    role_based_access_control{
        enabled             = true

        /*azure_active_directory{
            client_app_id       = "${var.aks_app_id}"

            server_app_id       = "${var.aks_app_id}"
            server_app_secret   = "${var.aks_app_secret}"
        }*/
    }

    tags ="${var.tags}"
}
