wp_db
   mysql_database:
      - present
      - name: wordpress
   mysql_user:
      - present
      - name: wordpress
      - host: localhost
      - password: app_w0rdPr3SsMySql
   mysql_grant:
      - present
      - name: grants_wordpress
      - user: wordpress
      - host: localhost
      - database: wordpress
      - grant: all privileges
