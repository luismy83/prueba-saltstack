mysql-server_user:
  mysql_user:
    - present
    - name: {{ pillar['mysql-server']['user'] }}
    - password: {{ pillar['mysql-server']['pass'] }}
    - require:
      - service: mysqld
