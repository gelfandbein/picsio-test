ARG ELK_VERSION

FROM docker.elastic.co/beats/filebeat:${ELK_VERSION}

# VOLUME /usr/share/filebeat/logs/nginx

# CMD mkdir /usr/share/filebeat/docker && mkdir /usr/share/filebeat/logs

# RUN filebeat modules enable system nginx logstash

#COPY logs/access.log /usr/share/filebeat/logs/nginx/access.log
#COPY logs/error.log /usr/share/filebeat/logs/nginx/error.log

# RUN filebeat setup --dashboards
# RUN filebeat setup -e

#            - /path/to/myElk/filebeat/tmp:/tmp/filebeat