resource "fortios_firewall_policy" "trname" {
  action             = "accept"
  logtraffic         = "utm"
  name               = "lan_access"
  policyid           =  8000  # I select the 8000-8999 thousand group forthe creation of Terraform rules
  schedule           = "always"
  comments           = "MANAGED BY TERRAFFORM ${local.current_date} SOCPUPPETS "

  dstaddr {
    name = "all"
  }

  dstintf {
    name = "wan1"
  }

  service {
    name = "HTTPS"
  }

  srcaddr {
    name = "all"
  }

  srcintf {
    name = "lan"
  }
}

 
#----insert new policyid above starting from 8000+ ---------
locals {
 # It's good practice to TS the policy up in UTC or LocalTZ 
  current_date = formatdate("YYYY-MM-DD-hh-mm-ss", timestamp())
}
