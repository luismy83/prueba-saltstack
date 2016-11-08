httpd:
   service.running:
      - enable: True
      - reload: True

mysqld:
   service.running:
      - enable: True
      - reload: True 
      - require:
         - pkg: mysql-server
      - watch:
         - file: {{ pillar['mysql-server']['config']['file']}} 
         - pkg: mysql-server
