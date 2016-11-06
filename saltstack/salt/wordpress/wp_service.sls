wp_service:
  service:
    - running
    - name: httpd
    - enable: True    
    - watch:
      - file: /etc/httpd/conf.d/wordpress.conf
