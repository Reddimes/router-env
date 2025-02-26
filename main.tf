terraform {
  required_providers {
    cloudstack = {
      source = "local/cloudstack/cloudstack"
      version = "0.5.0"
    }
  }
}

# Configure the CloudStack Provider
provider "cloudstack" {
  api_url    = "http://10.10.0.2:8080/client/api"
  api_key    = "J35NB7yYjDA-IekyKx2cPmO7Bn-UB24DpcUrYQR0xU_EquXwUtTUyyu-U8e-rNgICGbkJeED8oWaW5n57KKuiQ"
  secret_key = "4CU4MNxXZD46x6QQib2nzTQTzo7dpnjEGmjMsjL8_9Hi4N9B_zR_an1IDNWWb_9Dq2bFbkhAWDZgRta1bYFCHA"
}

# Create a web server
resource "cloudstack_instance" "web" {
  name             = "server-1"
  service_offering = "small"
  network_id       = "02a42686-823a-411a-a1fc-d93fa6e51c74"
  template         = "Ubuntu Noble"
}
