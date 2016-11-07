wp_apache_service:
  service:
    - running
    - name: httpd
    - enable: True    
    - watch:
      - file: {{ pillar['wordpress']['config']['file'] }}
