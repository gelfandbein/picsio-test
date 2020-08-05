ARG ELK_VERSION

FROM docker.elastic.co/beats/filebeat:${ELK_VERSION}

CMD mkdir /usr/share/filebeat/docker && mkdir /usr/share/filebeat/logs


#volumes:
#    - /path/to/myElk/log/nginx:/etc/logs/nginx # логи nginx
#            - /path/to/myElk/filebeat:/etc/filebeat
#            - /path/to/myElk/filebeat/tmp:/tmp/filebeat