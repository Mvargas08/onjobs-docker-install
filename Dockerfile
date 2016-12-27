FROM node
MAINTAINER Manuel Vargas <mvargas@xpectrumtech.com>
ENV TERM xterm
ADD scripts/start.sh /root/start.sh
RUN mkdir -p /root/onJobs-rest-api && \
	cd /root/onJobs-rest-api && \
    git clone https://github.com/Mvargas08/onjobs.git && \
    cd /root/onJobs-rest-api/onJobs && \
    npm install && \
    chmod +x /root/start.sh && \
    npm install forever -g
EXPOSE 8084
CMD ["/root/start.sh"]
