data "http" "workstation-public-ip" {
  url = "http://ipv4.icanhazip.com"
}

locals {
  workstation-public-cidr = "${chomp(data.http.workstation-public-ip.response_body)}/32"
}
