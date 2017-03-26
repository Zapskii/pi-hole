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
      ]" \
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"ServerIP\",						\
              \"descr\": \"Set to your server's external IP in order to override what Pi-Hole uses. Pi-Hole auto discovers the unusable internal docker IP otherwise\",		\
              \"optional\": false					\
          }	
          {								\
              \"env\": \"WEBPASSWORD\",						\
              \"descr\": \"Set this to your desired password or first boot will randomly set one.\",		\
              \"optional\": false					\
          }								\
          {								\
              \"env\": \"DNS1\",						\
              \"descr\": \"Set this to your desired password or first boot will randomly set one.\",		\
              \"optional\": true					\
          }								\
          {								\
              \"env\": \"DNS1\",						\
              \"descr\": \"Set this to your desired password or first boot will randomly set one.\",		\
              \"optional\": true					\
          }								\
          {								\
              \"env\": \"VIRTUAL_HOST\",						\
              \"descr\": \"web server 'virtual host' address for accessing admin. Allows you to make changes to the whitelist / blacklists in addition to the default 'http://pi.hole/admin/' address\",		\
              \"optional\": true					\
          }								\
      ]"

