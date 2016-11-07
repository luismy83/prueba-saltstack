wp_mysql_service:
  service:
    - running
    - name: mysqld
    - enable: True    
    - watch:
      - file: /etc/my.cnf
