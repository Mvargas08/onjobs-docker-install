FROM node
MAINTAINER Manuel Vargas <mvargas@xpectrumtech.com>
ENV TERM xterm
ADD scripts/start.sh /root/start.sh
RUN mkdir -p /root/despachalo-rest-api && \
	cd /root/despachalo-rest-api && \
    git clone https://github.com/Mvargas08/despachalo.git && \
    cd /root/despachalo-rest-api/despachalo && \
    npm install && \
    chmod +x /root/start.sh && \
    npm install forever -g
EXPOSE 8084
CMD ["/root/start.sh"]
