cp -rv /config /etc/asterisk

/usr/bin/sed -i "s/PBX_URI/$PBX_URI/g" /etc/asterisk/config/isthari_pjsip.conf
/usr/bin/sed -i "s/PBX_EXT/$PBX_EXT/g" /etc/asterisk/config/isthari_pjsip.conf
/usr/bin/sed -i "s/PBX_PASSWORD/$PBX_PASSWORD/g" /etc/asterisk/config/isthari_pjsip.conf
/usr/bin/sed -i "s/WEB_EXT/$WEB_EXT/g" /etc/asterisk/config/isthari_pjsip.conf
/usr/bin/sed -i "s/WEB_PASSWORD/$WEB_PASSWORD/g" /etc/asterisk/config/isthari_pjsip.conf
/usr/bin/sed -i "s/PBX_EXT/$PBX_EXT/g" /etc/asterisk/config/isthari_extensions.conf


/usr/sbin/asterisk -T -W -p -vvvdddf

