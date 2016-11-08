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
         - file: /etc/my.cnf
         - pkg: mysql-server
