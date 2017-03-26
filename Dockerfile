FROM diginc/pi-hole:alpine
LABEL org.freenas.interactive="false" \ 
      org.freenas.version=“1.0” \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.port-mappings="53:53/tcp,53:53/udp,80:80/tcp” \
      org.freenas.volumes="[					\
          {							\
              \"name\": \”/etc/pihole\”,				\
              \"descr\": \”Pi-hole configgs\”		\
          }							\
      ]"