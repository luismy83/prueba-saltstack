wp_conffile:
   file:
      - replace
      - name: {{ pillar['wp_conf'] }}
      - pattern: define('DB_USER', 'username_here'); 
      - repl: define('DB_NAME', 'wordpress');
