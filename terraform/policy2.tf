# example of a policy with multiple services
#
resource "fortios_firewall_policy" "trname3" {
  action             = "accept"
  logtraffic         = "utm"
  name               = "Commons_allows_Services"
  policyid           =  8003
  schedule           = "always"
  nat                = "enable"
  comments           = "MANAGED BY TERRAFFORM ${local.current_date} SOCPUPPETS "

  dstaddr {
    name = "all"
  }

  dstintf {
    name = "wan1"
  }

  srcaddr {
    name = "all"
  }

  srcintf {
    name = "lan"
  }
  
  service {
    name =  "HTTPS"
  }
  
  service {
    name = "SMTP"
  }
  
  service {
    name = "SMTPS"
  }
  
  service {
    name = "SSH"
  }
    
  service {
    name = "SYSLOG"
  }
    
  service {
    name = "TRACEROUTE"
  }
    
  service {
    name = "VNC"
  }
}



locals {
 # It's good practice to TS the policy up in UTC or LocalTZ 
  current_date = formatdate("YYYY-MM-DD-hh-mm-ss", timestamp())
}
