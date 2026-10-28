variable "resource_group_name" {
    type    = string
    default = "rg-halozat-lab"
    description = "Az Azure Resource Group neve"
}

variable "location" {
    type    = string
    default = "westeurope"
    description = "Az Azure regio, ahova az eroforrasokat epitjuk"
    }

    variable "vnet_address_space" {
        type    = list(string)
        default = ["10.0.0.0/16"]
        description = "A virtualis halozat IP-tartomanya"
    }