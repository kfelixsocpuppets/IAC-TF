terraform {
  required_providers {
    fortios = {
      source = "fortinetdev/fortios"
    }
   }
}



# Configure the FortiOS Provider Hostname and Token are variables
provider "fortios" {
hostname = var.hostname_value 
token =  var.token
insecure = "true"
}
