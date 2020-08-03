FROM nginx:latest

WORKDIR /tmp

RUN apt update && apt -y upgrade && apt -yqq --no-install-recommends install shellinabox procps iputils-ping

# COPY default.conf /etc/nginx/conf.d/default.conf
# COPY htpasswd.elk /etc/nginx/htpasswd.elk
COPY start.sh .

# EXPOSE 80/tcp

STOPSIGNAL SIGQUIT

ENTRYPOINT ["/tmp/start.sh", "-d"]

#ENTRYPOINT ["nginx", "-g", "daemon off;"]
