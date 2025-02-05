# Configure the CloudStack Provider
provider "cloudstack" {
  api_url    = "${var.cloudstack_api_url}"
  api_key    = "${var.cloudstack_api_key}"
  secret_key = "${var.cloudstack_secret_key}"
}

# Create a web server
resource "cloudstack_instance" "web" {
  name             = "server-1"
  service_offering = "small"
  network_id       = "02a42686-823a-411a-a1fc-d93fa6e51c74"
  template         = "Ubuntu Noble"
}
