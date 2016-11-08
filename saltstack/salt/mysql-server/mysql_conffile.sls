mysql_conffile:
   file:
      - managed
      - name: {{ pillar['mysql-server']['config']['file'] }}
      - source: salt://mysql-server/conf/template.jinja
      - template: jinja
      - replace: True
