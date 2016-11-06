wp_db:
   mysql_database:
      - present
      - name: {{ pillar['wp_db'] }} 
   mysql_user:
      - present
      - name: {{ pillar['wp_user'] }} 
      - host: {{ pillar['wp_host'] }} 
      - password: {{ pillar['wp_pass'] }} 
   mysql_grants:
      - present 
      - name: grants_wordpress
      - user: {{ pillar['wp_user'] }} 
      - host: {{ pillar['wp_host'] }} 
      - database: {{ pillar['wp_db'] }}.*
      - grant: all privileges
