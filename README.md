# pihole-unbound

Pihole and Unbound in one docker container.

Edit the .env file for your own settings.


Ignore lines with #
ServerIP=192.168.1.83                 # IP address of the server. Needed for Pihole an Unbound to work together
TZ=Europe/Copenhagen		      # Time Zone
WEBPASSWORD=asdQWE123		      # Password for Pihole. If not set a random pass will be generated.
#REV_SERVER=true		      # Conditional forwarding. True or false (false is default)
#REV_SERVER_TARGET=192.168.1.2        # IP address of the DHCP server
#REV_SERVER_DOMAIN=:example.com       # Domain name (optional)
#REV_SERVER_CIDR=192.168.1.0/24       # Range of IP addresses in your network









