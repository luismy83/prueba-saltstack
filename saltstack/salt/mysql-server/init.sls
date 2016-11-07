mysql-server:
  pkg:
    - installed
    - pkgs:
      - mysql-server
      - MySQL-python 
  file:
    - managed 
    - name: /etc/my.cnf
    - source: salt://mysql-server/conf/my.cnf
    - replace: True
  service:
    - running
    - name: mysqld
    - enable: True
    - require:
      - pkg: mysql-server
    - watch:
      - file: /etc/my.cnf
  mysql_user:
    - present
    - name: {{ pillar['mysql']['user'] }} 
    - password: {{ pillar['mysql']['pass'] }} 
    - require:
      - service: mysqld
