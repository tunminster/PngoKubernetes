terraform{
    #required_version = ">= 0.11.10"

    backend "azurerm"{
        #storage_account_name        = "terraformstoreaccount"
        #container_name              = "dixi-test-terraform"
        #key                         = "test.dixi-cosmos-terraform"
        #access_key                  ="xxxxxxxxxxxxxxxxxxxxxxxxxxx"
        #subscription_id             = "32f8988a-6b66-440b-ab2d-f722babe428f"
        #tenant_id                   = "5d0501ba-8bc1-464e-b3ad-9e2c8779c55c"
    }
}