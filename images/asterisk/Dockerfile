FROM ubuntu:groovy-20210524

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y asterisk

RUN sed -i 's/;enabled=yes/enabled=yes/g' /etc/asterisk/http.conf
# TODO quitar esto en pro porque viene del apache
RUN sed -i 's/bindaddr=.*/bindaddr=0.0.0.0/g' /etc/asterisk/http.conf

# Puertos RTP
RUN sed -i 's/rtpstart.*/rtpstart=50000/g' /etc/asterisk/rtp.conf
RUN sed -i 's/rtpend.*/rtpend=50020/g' /etc/asterisk/rtp.conf

# Archivos de configuracion PBX
RUN echo "#include config/isthari_pjsip.conf" >> /etc/asterisk/pjsip.conf
RUN echo "#include config/isthari_extensions.conf" >> /etc/asterisk/extensions.conf

RUN sed -i 's/\[global\]//g' /etc/asterisk/modules.conf
RUN echo "noload => chan_sip.so" >> /etc/asterisk/modules.conf

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD /run.sh
