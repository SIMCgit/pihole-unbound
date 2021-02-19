# pihole-unbound

### Pihole and Unbound in one docker container.

Edit the .env file for your own settings.
(Also edit docker-compose.yml if needed)


Lines with # in front are ignored.

| Environment Var | Description|
| --- | --- |
| `HOSTNAME=pihole-container` | Give it a hostname. If not set the container ID is used. If blank "none" is used.
| `ServerIP=192.168.1.83` | IP address of the docker host. Helps prepopulate DHCP settings in Pihole GUI
| `TZ=Europe/Copenhagen` | Set your [timezone](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) to make sure logs rotate at local midnight instead of at UTC midnight.
| `WEBPASSWORD=asdQWE123` | Password for Pihole. If not set a random pass will be generated. If blank no pass is set.
| `RESTART=always` | always = Automatic start after reboot. unless-stopped = Manual start after reboot.
| `REV_SERVER=true` | Enable DNS conditional forwarding for device name resolution (false is default)
| `REV_SERVER_TARGET=192.168.1.2` | If conditional forwarding is enabled, set the IP of the local network DHCP server
| `REV_SERVER_DOMAIN=example.com` | If conditional forwarding is enabled, set the domain of the local network router (optional)
| `REV_SERVER_CIDR=192.168.1.0/24` | If conditional forwarding is enabled, set the reverse DNS zone (e.g. `192.168.1.0/24`)
