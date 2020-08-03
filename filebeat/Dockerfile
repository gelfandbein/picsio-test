ARG ELK_VERSION

FROM docker.elastic.co/beats/filebeat:${ELK_VERSION}

CMD mkdir /usr/share/filebeat/docker

#CMD filebeat modules enable system nginx elasticsearch kibana logstash
#CMD filebeat setup --template -E output.logstash.enabled=false -E 'output.elasticsearch.hosts=["localhost:9200"]'
#CMD filebeat setup -e -E output.logstash.enabled=false -E output.elasticsearch.hosts=['localhost:9200'] -E setup.kibana.host=localhost:5601

#volumes:
#    - /path/to/myElk/log/nginx:/etc/logs/nginx # логи nginx
#            - /path/to/myElk/filebeat:/etc/filebeat
#            - /path/to/myElk/filebeat/tmp:/tmp/filebeat