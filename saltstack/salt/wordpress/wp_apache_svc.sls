wp_apache_service:
  service:
    - running
    - name: httpd
    - enable: True    
    - watch:
      - file: /etc/httpd/conf.d/*
