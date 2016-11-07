wp_db:
   mysql_database:
      - present
      - name: {{ pillar['wordpress']['database']['name'] }} 
   mysql_user:
      - present
      - name: {{ pillar['wordpress']['database']['user'] }} 
      - host: {{ pillar['wordpress']['database']['host'] }} 
      - password: {{ pillar['wordpress']['database']['pass'] }} 
   mysql_grants:
      - present 
      - name: grants_wordpress
      - user: {{ pillar['wordpress']['database']['user'] }} 
      - host: {{ pillar['wordpress']['database']['host'] }} 
      - database: {{ pillar['wordpress']['database']['name'] }}.*
      - grant: all privileges
