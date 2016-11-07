wp_conffile:
   file:
      - replace
      - name: {{ pillar['wp_conf'] }}
      - pattern: username_here 
      - repl: {{ pillar['wp_conf'] }}
