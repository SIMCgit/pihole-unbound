FROM pihole/pihole:latest

RUN apt-get update && apt-get install -y \
    unbound \
    && rm -rf /var/lib/apt/lists/*

COPY unbound-pihole.conf /etc/unbound/unbound.conf.d/pi-hole.conf
COPY start_unbound_and_s6_init.sh start_unbound_and_s6_init.sh

RUN chmod +x start_unbound_and_s6_init.sh
ENTRYPOINT ./start_unbound_and_s6_init.sh
