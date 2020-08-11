FROM nginx:latest

WORKDIR /etc/nginx

RUN apt update && apt -y upgrade && apt -yqq --no-install-recommends install shellinabox procps iputils-ping

### for output to stdout & stderr
RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log

COPY ./start.sh /
# COPY ./wait-for-it.sh /usr/bin/wait-for-it.sh

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.7.3/wait /wait
RUN chmod +x /wait

# EXPOSE 80/tcp

STOPSIGNAL SIGQUIT

#ENTRYPOINT [ "/bin/bash", "-c" ]
#CMD ["./wait-for-it.sh" , "[kibana:5601]" , "--strict" , "--timeout=300" , "--" , "/etc/nginx/start.sh -d"]
# ENTRYPOINT ["/etc/nginx/start.sh", "-d"]

# CMD /wait && /start.sh

#ENTRYPOINT ["nginx", "-g", "daemon off;"]
