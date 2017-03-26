FROM diginc/pi-hole:alpine
LABEL org.freenas.interactive="false" \ 
      org.freenas.version=“1.0” \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.port-mappings="80:80/tcp,53:53/tcp,53:53/udp” \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/etc/pihole/\",					\
              \"descr\": \"Path to Pi-hole configs\”			\
          }								\
      ]"

