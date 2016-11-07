mysql_svc:
  service:
    - running
    - name: mysqld
    - enable: True
    - require:
      - pkg: mysql-server
    - watch:
      - file: /etc/my.cnf
