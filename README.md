# README.md

# ToDo

• Перед выполнением нужно оценить сложность и трудоёмкость задачи и написать мне;
• На Linux машине с доступом по публичному SSH ключу на 26 порту нужно поднять reliable Elasticsearch 7 кластер из нескольких нод;
• Данные каждой ноды необходимо хранить на отдельном EBS (или аналогичном) томе;
• Перед Elasticsearch кластером должен работать nginx, который:
  - на запрос на /elasticsearch работает как reverse proxy для Elasticsearch кластера;
  - на запроc на /top возвращает страницу с выводом команды top;
  - на запроc на /logs возвращает web-based UI для просмотра логов nginx и Elasticsearch (на выбор graylog, logstash или fluentd);
  - на все остальные запросы возвращает HTML страницу c параметрами обрабатываемого HTTP-запроса;
• Elasticsearch и nginx должны быть описаны как единая docker compose конфигурация;
• Кластер должен стабильно работать при потере до 3-х нод;

# Changes:

 - nginx + top, link http://<server>/top (login 'admin' & pass '123123123')
 - .. + logstash, link http://<server>/logstash
 - .. + elasticsearch
 - .. + kibana
 - + filebeat + metricbeat
 - DOCKEROPTS='-H tcp://0.0.0.0:4243 -H unix:///var/run/docker.sock' - to local docker defaults
 - logstash input 5000>5044
 - added docker-ui DockStation & Portainer
 - added limits to containers: WARNING: No swap limit support

# Help

useful links:
- https://www.elastic.co/guide/en/elastic-stack-get-started/current/get-started-docker.html
- https://github.com/elastic/stack-docs/blob/master/docs/en/getting-started/get-started-docker.asciidoc
- https://www.digitalocean.com/community/tutorials/how-to-install-and-manage-supervisor-on-ubuntu-and-debian-vps
- https://rtfm.co.ua/linux-supervisor-upravlenie-processami-i-servisami/
- https://docs.docker.com/config/containers/multi-service_container/
- curl --verbose http://elastic:changeme@127.0.0.1:9200
