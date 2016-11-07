wp_conffile_user:
   file:
      - replace
      - name: {{ pillar['wordpress']['config']['file'] }}
      - pattern: username_here 
      - repl: {{ pillar['wordpress']['database']['user'] }}

wp_conffile_database:
   file:
      - replace
      - name: {{ pillar['wordpress']['config']['file'] }}
      - pattern: database_name_here
      - repl: {{ pillar['wordpress']['database']['name'] }}

wp_conffile_pass:
   file:
      - replace
      - name: {{ pillar['wordpress']['config']['file'] }}
      - pattern: password_here
      - repl: {{ pillar['wordpress']['database']['pass'] }}
