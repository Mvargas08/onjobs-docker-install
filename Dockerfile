FROM node
MAINTAINER Manuel Vargas <mvargas@xpectrumtech.com>
ENV TERM xterm
ADD scripts/start.sh /root/start.sh
RUN mkdir -p /root/onjobs-rest-api && \
	cd /root/onjobs-rest-api && \
    git clone https://github.com/Mvargas08/onjobs.git && \
    cd /root/onjobs-rest-api/onjobs && \
    npm install && \
    chmod +x /root/start.sh && \
    npm install forever -g
EXPOSE 8084
CMD ["/root/start.sh"]
