FROM diginc/pi-hole:debian
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
      ]" \
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"ServerIP\",						\
              \"descr\": \"Set to your server's external IP\",		\
              \"optional\": false					\
          {								\
          {								\
              \"env\": \"WEBPASSWORD\",						\
              \"descr\": \"Set admin password.\”,		\
              \"optional\": false					\
          }								\
          {								\
              \"env\": \"DNS1\",						\
              \"descr\": \”Defaults to google.\”,		\
              \"optional\": true					\
          }								\
          {								\
              \"env\": \"DNS1\",						\
              \"descr\": \”Defaults to google.\”,		\
              \"optional\": true					\
          }								\
          {								\
              \"env\": \"VIRTUAL_HOST\",						\
              \"descr\": \"web server DNS address.'\",		\
              \"optional\": true					\
          }								\
      ]"
