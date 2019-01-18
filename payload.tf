# create a payload droplet
resource "digitalocean_droplet" "payload" {
  image  = "ubuntu-18-04-x64"
  name   = "payload"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  ssh_keys = ["${digitalocean_ssh_key.dossh.id}"]

#   provisioner "remote-exec" {
#     inline = [
#         # environment
#         "apt update",
#         "apt-get -y install zip default-jre",
#         "cd /opt; wget https://github.com/mantvydasb/Offensive-Security-OSCP-Cheatsheets/raw/master/lab/cs.zip -O cobaltstrike.zip",
#         "echo \"@reboot root cd /opt/cobaltstrike/; ./teamserver ${digitalocean_droplet.c2-http.ipv4_address} ${var.cspw}\" >> /etc/cron.d/mdadm",
#         "unzip -P ${var.cspw} cobaltstrike.zip && shutdown -r"
#     ]
#   }

}