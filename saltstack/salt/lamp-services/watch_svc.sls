httpd:
   service.running:
      - enable: True
      - reload: True

mysqld:
   service.running:
      - enable: True
      - watch:
         - file: {{ pillar['mysql-server']['config']['file']}} 
