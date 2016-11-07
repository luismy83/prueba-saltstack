wp_conffile:
   file:
      - replace
      - name: {{ pillar['wordpress']['config']['file'] }}
      - pattern: username_here 
      - repl: {{ pillar['wordpress']['database']['user'] }}
