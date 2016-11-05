mysql-server:
  pkg:
    - installed
    - pkgs:
      - mysql-server
      - MySQL-python 
  service:
    - running
    - name: mysqld
    - enable: True
    - require:
      - pkg: mysql-server
  file:
    - managed 
    - name: /etc/my.cnf
    - source: salt://mysql-server/conf/my.cnf
    - replace: True
  mysql_user:
    - present
    - name: sqladmin 
    - password: samplepass 
    - require:
      - service: mysqld
